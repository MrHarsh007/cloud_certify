import 'package:flutter/material.dart';

import '../utilities/theme/app_colors.dart';

class ScreenTitleWidget extends StatelessWidget {
  final String title;
  final Function()? seeAllTap;
  const ScreenTitleWidget({
    super.key,
    required this.title,
    this.seeAllTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500)),
        if (seeAllTap != null)
          Text("See All",
              style:
                  textTheme.titleSmall?.copyWith(color: AppColor.primaryColor))
      ],
    );
  }
}
