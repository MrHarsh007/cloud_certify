// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MyToastWidget extends StatelessWidget {
  final String message;
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final IconData icon;
  final TextStyle? style;
  final ThemeData theme;

  const MyToastWidget({
    super.key,
    required this.message,
    required this.backgroundColor,
    required this.iconBackgroundColor,
    required this.icon,
    required this.theme,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Makes the row compact
        children: [
          Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconBackgroundColor,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Text(
              message,
              overflow: TextOverflow.clip, // Handle long text
              style: style ??
                  theme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
