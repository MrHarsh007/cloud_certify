import 'package:flutter/material.dart';

import 'toast_widget.dart';

enum ShortToastType { success, warning, info, error }

void showShortToast({
  required BuildContext context,
  required String message,
  ShortToastType typeOfToast = ShortToastType.error,
  required ThemeData theme,
  TextStyle? style,
  IconData? icon,
}) {
  Color backgroundColor;
  Color iconBackgroundColor;
  IconData iconI;

  // Customize based on snackbar type
  switch (typeOfToast) {
    case ShortToastType.success:
      backgroundColor = const Color.fromARGB(189, 76, 175, 79);
      iconBackgroundColor = Colors.green;
      iconI = icon ?? Icons.check_circle;
      break;

    case ShortToastType.error:
      backgroundColor = const Color.fromARGB(187, 217, 43, 43);
      iconBackgroundColor = Colors.red;
      iconI = icon ?? Icons.close;
      break;
    case ShortToastType.warning:
      backgroundColor = const Color.fromARGB(176, 255, 153, 0);
      iconBackgroundColor = Colors.orange;
      iconI = icon ?? Icons.warning;
      break;
    case ShortToastType.info:
      backgroundColor = const Color.fromARGB(156, 33, 149, 243);
      iconBackgroundColor = Colors.blue;
      iconI = icon ?? Icons.info;
      break;
  }
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Align(
        alignment: Alignment.center, // Center the SnackBar content
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth:
                MediaQuery.of(context).size.width * 0.8, // Max width constraint
          ),
          child: MyToastWidget(
            backgroundColor: backgroundColor,
            message: message,
            iconBackgroundColor: iconBackgroundColor,
            icon: iconI,
            theme: theme,
            style: style,
          ),
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}
