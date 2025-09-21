import 'package:cloud_certify/src/presentation/all_export.dart';

class BadgeWidget extends StatelessWidget {
  final String text;

  const BadgeWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color:
            CommonUtilities.generateStatusColor(text)['text']!.withOpacity(0.8),
        borderRadius: BorderRadius.circular(SMALL_RADIUS),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
