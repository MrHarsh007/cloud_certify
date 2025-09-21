import 'package:flutter/material.dart';

import 'common_short_toast.dart';

extension ToastExtension on String {
  void showToast(
      {ShortToastType typeOfToast = ShortToastType.error,
      TextStyle? style,
      IconData? icon,
      required BuildContext context}) {
    final theme =
        ThemeData.light(); // Replace with your default or global theme

    showShortToast(
      message: this, // The string itself will be the message
      theme: theme,
      typeOfToast: typeOfToast,
      style: style,
      icon: icon, context: context,
    );
  }
}
