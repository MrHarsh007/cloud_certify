import 'package:cloud_certify/src/presentation/all_export.dart';

class ReleaseNotesCard extends StatelessWidget {
  const ReleaseNotesCard({
    super.key,
    required this.releaseInfo,
    this.icon = Icons.code,
    this.backgroundColor,
    this.iconBgColor,
    this.borderRadius = 12,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.symmetric(vertical: 12),
    this.titleStyle,
    this.subtitleStyle,
  });

  final ReleaseInfo releaseInfo;

  final IconData icon;
  final Color? backgroundColor;
  final Color? iconBgColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  String _formatDate(DateTime dt) {
    // Simple, dependency-free formatting: e.g., "May 1, 2025"
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return '${months[dt.month - 1]} ${dt.day}, ${dt.year}';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bg = backgroundColor ?? Colors.blue.shade50;
    final iconBg = AppColor.primaryColor;

    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: iconBg,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.code, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${releaseInfo.appName} v${releaseInfo.version}',
                  style: titleStyle ?? theme.textTheme.titleMedium,
                ),
                Text(
                  'Last Updated: ${_formatDate(releaseInfo.lastUpdated)}',
                  style: subtitleStyle ?? theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ]),
          const SizedBox(height: 15),
          const Text('Release Notes:',
              style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 6),
          BulletListWidget(items: releaseInfo.notes),
        ],
      ),
    );
  }
}

class ReleaseInfo {
  final String appName;
  final String version;
  final DateTime lastUpdated;
  final List<String> notes;

  const ReleaseInfo({
    this.appName = APP_NAME,
    required this.version,
    required this.lastUpdated,
    required this.notes,
  });
}
