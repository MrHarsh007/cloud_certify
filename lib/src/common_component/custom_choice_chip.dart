import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onSelected;
  final Color selectedColor;
  final Color backgroundColor;
  final TextStyle? selectedTextStyle;
  final TextStyle? unselectedTextStyle;
  final BorderSide borderSide;
  final TextTheme textTheme;

  const CustomChoiceChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onSelected,
    this.selectedColor = Colors.blue,
    this.backgroundColor = Colors.white,
    this.selectedTextStyle,
    this.unselectedTextStyle,
    required this.textTheme,
    this.borderSide = BorderSide.none,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      label: Text(
        label,
        style: isSelected
            ? selectedTextStyle ??
                textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )
            : unselectedTextStyle ??
                textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
      ),
      showCheckmark: false,
      selected: isSelected,
      onSelected: (selected) => onSelected(),
      selectedColor: selectedColor,
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        side: borderSide,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
