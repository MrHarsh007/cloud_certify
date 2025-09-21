import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String code;
  final String status;
  final Color backgroundColor;
  final VoidCallback? onDelete;

  const CustomChip({
    super.key,
    required this.code,
    required this.status,
    required this.backgroundColor,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Tooltip(
      message: status,
      child: Chip(
        deleteIconColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Colors.white),
        ),
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        label: Text(
          code,
          style: textTheme.titleSmall?.copyWith(color: Colors.white),
        ),
        onDeleted: onDelete,
      ),
    );
  }
}
