import 'package:flutter/material.dart';

import 'error_widget.dart';

enum CommonErrorTypes {
  noInternet,
  notFound,
  internalErr,
  maintenance,
  notAllowed
}

Widget showCommonError(
    {required Widget widget,
    required String buttonText,
    required VoidCallback onTap,
    required CommonErrorTypes errorType,
    required BuildContext context,
    required ThemeData theme}) {
  String error;
  String errorMessage;
  Color backgroundColor;
  Color borderColor;
  String icon;
  String message;

  switch (errorType) {
    case CommonErrorTypes.notFound:
      error = "Not Found";
      errorMessage = "Error Code: 404";
      message = "Whoops! Dr. A can’t find this page :(";
      icon = "assets/icons/warning_svg.svg";
      backgroundColor = Color(0xffFFE4E6);
      borderColor = Color(0xffFDA4AF);
      break;
    case CommonErrorTypes.noInternet:
      error = "No Internet";
      errorMessage = "Refresh or Try Later";
      message = "It seems you don’t have active internet.";
      icon = "assets/icons/info_svg.svg";
      backgroundColor = Color(0xffDBEAFE);
      borderColor = Color(0xff93C5FD);
      break;
    case CommonErrorTypes.internalErr:
      error = "Internal Error";
      errorMessage = "Refresh or Try Later";
      message = "Whoops! Our server seems to error.";
      icon = "assets/icons/info_svg.svg";
      backgroundColor = Color(0xffDBEAFE);
      borderColor = Color(0xff93C5FD);
      break;
    case CommonErrorTypes.maintenance:
      error = "Maintenance";
      errorMessage = "Come back in 24h";
      message = "We’re undergoing maintenance :(.";
      icon = "assets/icons/clock_svg.svg";
      backgroundColor = Color(0xffFEF3C7);
      borderColor = Color(0xffF59E0B);
      break;
    case CommonErrorTypes.notAllowed:
      error = "Not Allowed";
      errorMessage = "Contact Admin";
      message = "Hey, you don’t have permission.";
      icon = "assets/icons/telephone_svg.svg";
      backgroundColor = Color(0xffFFE4E6);
      borderColor = Color(0xffFDA4AF);
      break;
  }

  return CommonErrorWidget(
    widget: widget,
    errMessage: message,
    onTap: onTap,
    buttonText: buttonText,
    error: error,
    errorMessage: errorMessage,
    backgroundColor: backgroundColor,
    borderColor: borderColor,
    icon: icon,
    theme: theme,
  );
}
