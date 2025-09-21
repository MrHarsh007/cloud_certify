import 'package:flutter/material.dart';
import '../utilities/extensions/sized_box_extension.dart';
import '../utilities/constants/common_assets.dart';
import '../utilities/theme/app_colors.dart';

class DateSelectorWidget extends StatelessWidget {
  final String label;
  final String placeholder;
  final int? selectedDate;
  final VoidCallback onTap;

  const DateSelectorWidget({
    super.key,
    required this.label,
    this.placeholder = "DD/MM/YY",
    this.selectedDate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: textTheme.titleSmall?.copyWith(fontSize: 12)),
        5.hx,
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColor.primaryColor),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  color: AppColor.primaryColor,
                ),
                const SizedBox(width: 10),
                Text(
                  selectedDate == null
                      ? placeholder
                      : CommonAssets.timestampToDate(selectedDate ?? 0),
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
