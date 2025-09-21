import 'package:cloud_certify/src/common/constant.dart';
import 'package:cloud_certify/src/utilities/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

enum MessageType { error, done, warning }

/// Inserts an animated toast into the [Overlay].
/// The toast slides in from the top-right, remains for [duration], then slides out.
void showCommonToast({
  required BuildContext context,
  required String message,
  int maxLines = 3,
  ToastificationType notificationType = ToastificationType.info,
  Duration duration = const Duration(seconds: 3),
}) {
  /// Background colors per type
  Color getBackgroundColor(ToastificationType type) {
    switch (type) {
      case ToastificationType.success:
        return Colors.green; // Light green
      case ToastificationType.error:
        return Colors.red; // Light red
      case ToastificationType.warning:
        return Colors.orangeAccent; // Light yellow
      default:
        return AppColor.primarySecondaryColor; // Light blue-gray for info
    }
  }

  final bgColor = getBackgroundColor(notificationType);

  toastification.show(
    context: context,
    type: notificationType,
    style: ToastificationStyle.flat,
    alignment: Alignment.topRight,
    autoCloseDuration: duration,
    title: Text(
      message,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: Colors.white,
      ),
    ),
    closeButtonShowType: CloseButtonShowType.onHover,
    primaryColor: Colors.white,
    backgroundColor: bgColor,
    // foregroundColor: Colors.white,
    progressBarTheme: ProgressIndicatorThemeData(
      color: Colors.white.withOpacity(0.6),
      circularTrackColor: Colors.white,
      linearTrackColor: Colors.white.withOpacity(0.3),
      linearMinHeight: 2,
    ),
    borderRadius: BorderRadius.circular(SMALL_RADIUS),
    // borderSide: BorderSide(color: accentColor),
    showProgressBar: true,
    dragToClose: true,
    animationBuilder: (context, animation, alignment, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
