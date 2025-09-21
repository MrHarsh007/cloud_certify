import 'package:cloud_certify/src/utilities/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../common/constant.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.onTap,
    super.key,
    this.label,
    this.labelLoading,
    this.backgroundColor,
    this.borderColor,
    this.labelColor = Colors.white,
    this.child,
    this.isLoading = false,
    this.width = double.infinity,
    this.height = 50,
    this.labelSize,
    this.margin,
    this.radius = RADIUS,
    this.labelLoadingStyle,
    this.labelStyle,
    this.padding,
  });

  final Widget? child;
  final String? label;
  final String? labelLoading;
  final Color? backgroundColor;
  final Color? labelColor;
  final Color? borderColor;
  final VoidCallback onTap;
  final bool isLoading;
  final double width;
  final double height;
  final double? labelSize;
  final EdgeInsetsGeometry? margin;
  final double radius;
  final TextStyle? labelLoadingStyle;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: width,
      height: height,
      margin: margin,
      child: ElevatedButton(
        onPressed: (isLoading == true) ? () {} : onTap,
        style: ElevatedButton.styleFrom(
          padding: child != null ? EdgeInsets.zero : padding,
          maximumSize: Size(width, height),
          elevation: 0,
          backgroundColor: backgroundColor ?? AppColor.primarySecondaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: BorderSide(color: borderColor ?? Colors.transparent)),
        ),
        child: (isLoading == true)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SpinKitThreeBounce(
                    size: 15,
                    color: Colors.white,
                  ),
                  const SizedBox(width: SPACE12),
                  Text(
                    labelLoading ?? '',
                    style: labelLoadingStyle ??
                        theme.textTheme.labelLarge?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ],
              )
            : (label == '' || label == null)
                ? child
                : Text(
                    label ?? '',
                    style: labelStyle ??
                        theme.textTheme.labelLarge?.copyWith(
                          fontSize: labelSize,
                          color: labelColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
      ),
    );
  }
}
