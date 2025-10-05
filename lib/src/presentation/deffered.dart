import 'package:flutter/material.dart';

class DeferredScreen extends StatefulWidget {
  final Future<void> Function() loadLibrary;
  final Widget Function() builder;
  final Widget? placeholder;

  const DeferredScreen({
    super.key,
    required this.loadLibrary,
    required this.builder,
    this.placeholder,
  });

  @override
  State<DeferredScreen> createState() => _DeferredScreenState();
}

class _DeferredScreenState extends State<DeferredScreen> {
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    widget.loadLibrary().then((_) {
      if (mounted) setState(() => _loaded = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_loaded) {
      return widget.placeholder ??
          const Center(child: CircularProgressIndicator());
    }
    return widget.builder();
  }
}
