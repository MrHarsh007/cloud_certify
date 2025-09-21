import '../common_component/common_button.dart';
import 'package:flutter/material.dart';
import '../common/constant.dart';
import '../utilities/theme/app_colors.dart';

class ReusableDatePickerDialog extends StatelessWidget {
  final String title;
  final DateTime? initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final ValueChanged<DateTime> onDateSelected;

  const ReusableDatePickerDialog({
    super.key,
    required this.title,
    this.initialDate,
    required this.firstDate,
    required this.lastDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = initialDate ?? DateTime.now();

    return AlertDialog(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      insetPadding: const EdgeInsets.all(16),
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(RADIUS)),
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Theme(
          data: ThemeData.light().copyWith(
            primaryColor: AppColor.primaryColor,
            textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            colorScheme: ColorScheme.light(
              primary: AppColor.primaryColor,
              onPrimary: Colors.white, // Text color for selected date
              onSurface: Colors.black, // Text color for other dates
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColor.primaryColor, // Buttons text color
              ),
            ),
          ),
          child: CalendarDatePicker(
            initialDate: selectedDate,
            firstDate: firstDate,
            lastDate: lastDate,
            onDateChanged: (DateTime newDate) {
              selectedDate = newDate;
            },
          ),
        ),
      ),
      actions: <Widget>[
        CustomElevatedButton(
          onTap: () => Navigator.pop(context),
          label: "Cancel",
          width: 110,
          backgroundColor: Colors.transparent,
          borderColor: AppColor.primaryColor,
          labelColor: AppColor.primaryColor,
        ),
        CustomElevatedButton(
          onTap: () {
            Navigator.pop(context);
            onDateSelected(selectedDate);
          },
          label: "Select",
          width: 110,
        ),
      ],
    );
  }
}
