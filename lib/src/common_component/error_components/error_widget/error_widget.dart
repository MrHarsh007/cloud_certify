// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utilities/extensions/sized_box_extension.dart';
import '../../../utilities/theme/app_colors.dart';
import '../../common_button.dart';

class CommonErrorWidget extends StatelessWidget {
  final Widget widget;
  final String errMessage;
  final VoidCallback onTap;
  final String buttonText;
  final String error;
  final String errorMessage;
  final Color backgroundColor;
  final Color borderColor;
  final String icon;
  final ThemeData theme;
  const CommonErrorWidget(
      {super.key,
      required this.widget,
      required this.errMessage,
      required this.onTap,
      required this.buttonText,
      required this.error,
      required this.errorMessage,
      required this.backgroundColor,
      required this.borderColor,
      required this.icon,
      required this.theme});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget,
            30.hx,
            Text(
              error,
              style: theme.textTheme.headlineLarge,
            ),
            5.hx,
            Text(
              errMessage,
              style: theme.textTheme.bodyLarge,
            ),
            25.hx,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: backgroundColor,
                  border: Border.all(color: borderColor, width: 0.7)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    icon,
                    height: 20,
                    width: 20,
                  ),
                  3.wx,
                  Text(
                    errorMessage,
                    style: theme.textTheme.titleLarge?.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            30.hx,
            CustomElevatedButton(
              label: buttonText,
              backgroundColor: AppColor.primaryColor,
              borderColor: Colors.transparent,
              onTap: onTap,
              labelSize: 14,
            )
          ],
        ),
      ),
    );
  }
}
