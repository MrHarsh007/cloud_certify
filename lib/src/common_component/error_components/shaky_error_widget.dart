import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';

/// A modern, reusable error widget with animation + retry.
/// - Fades & slides in
/// - Optional shake pulse
/// - Async-aware retry button (shows spinner)
class ModernErrorCard extends StatefulWidget {
  const ModernErrorCard({
    super.key,
    this.title = 'Something went wrong',
    required this.message,
    required this.onRetry,
    this.retryLabel = 'Retry',
    this.icon,
    this.showShake = true,
    this.background,
    this.foreground,
    this.borderRadius = 16,
    this.elevation = 0,
    this.padding = const EdgeInsets.all(20),
    this.constraints = const BoxConstraints(maxWidth: 600),
    this.actions,
  });

  final String title;
  final String message;
  final FutureOr<void> Function() onRetry;
  final String retryLabel;
  final IconData? icon;
  final bool showShake;
  final Color? background;
  final Color? foreground;
  final double borderRadius;
  final double elevation;
  final EdgeInsetsGeometry padding;
  final BoxConstraints constraints;
  final List<Widget>? actions;

  @override
  State<ModernErrorCard> createState() => _ModernErrorCardState();
}

class _ModernErrorCardState extends State<ModernErrorCard>
    with TickerProviderStateMixin {
  late final AnimationController _enterCtrl;
  late final Animation<double> _fade;
  late final Animation<Offset> _slide;

  late final AnimationController _shakeCtrl;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _enterCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 380),
    );
    _fade = CurvedAnimation(parent: _enterCtrl, curve: Curves.easeOutCubic);
    _slide = Tween<Offset>(begin: const Offset(0, .06), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: _enterCtrl, curve: Curves.easeOutCubic));

    _shakeCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    // Kick off entrance, then optional shake pulse.
    _enterCtrl.forward().whenComplete(() {
      if (widget.showShake) _shakeCtrl.forward(from: 0);
    });
  }

  @override
  void dispose() {
    _enterCtrl.dispose();
    _shakeCtrl.dispose();
    super.dispose();
  }

  Future<void> _handleRetry() async {
    if (_busy) return;
    setState(() => _busy = true);
    try {
      await Future.sync(widget.onRetry);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bg = widget.background ?? theme.colorScheme.surfaceContainerHighest;
    final fg = widget.foreground ?? theme.colorScheme.onSurfaceVariant;
    final accent = theme.colorScheme.error;

    // Shake offset from sine wave (gentle horizontal tremor)
    final shake = AnimatedBuilder(
      animation: _shakeCtrl,
      builder: (context, child) {
        // 3 quick oscillations with damping
        final t = _shakeCtrl.value;
        final dx = (math.sin(t * math.pi * 6) * (1 - t)) * 8; // px
        return Transform.translate(offset: Offset(dx, 0), child: child);
      },
      child: _card(bg, fg, accent, theme),
    );

    return Semantics(
      liveRegion: true,
      container: true,
      label: 'Error',
      child: SlideTransition(
        position: _slide,
        child: FadeTransition(
          opacity: _fade,
          child: shake,
        ),
      ),
    );
  }

  Widget _card(Color bg, Color fg, Color accent, ThemeData theme) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
      constraints: widget.constraints,
      decoration: ShapeDecoration(
        color: bg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          side: BorderSide(color: theme.colorScheme.outlineVariant),
        ),
        shadows: widget.elevation > 0
            ? [BoxShadow(blurRadius: 12, color: Colors.black.withOpacity(.08))]
            : null,
      ),
      padding: widget.padding,
      child: DefaultTextStyle(
        style: theme.textTheme.bodyMedium!.copyWith(color: fg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: theme.colorScheme.errorContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(widget.icon ?? Icons.error_rounded,
                    color: theme.colorScheme.onErrorContainer, size: 24),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: accent,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(height: 6),
                    Text(widget.message),
                    const SizedBox(height: 14),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        ElevatedButton.icon(
                          onPressed: _busy ? null : _handleRetry,
                          icon: _busy
                              ? SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation(
                                        theme.colorScheme.onPrimary),
                                  ),
                                )
                              : const Icon(Icons.refresh_rounded),
                          label: Text(widget.retryLabel),
                        ),
                        if (widget.actions != null) ...widget.actions!,
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
