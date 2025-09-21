import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common/constant.dart';

class CommonDropDownWidget<T> extends StatelessWidget {
  const CommonDropDownWidget({
    super.key,
    required this.listOfItem,
    this.title,
    this.value,
    this.showTitle = false,
    this.isRequired = false,
    this.hint,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.disabledBorderColor,
    this.inputBorderColor,
    this.contentPadding,
    this.textStyle,
    this.onTap,
    this.fillColor,
    required this.onChanged,
    this.validator,
    this.width,
  });

  final String? title;
  final bool showTitle;
  final bool isRequired;
  final String? hint;
  final T? value;
  final List<T> listOfItem;
  final Function(T? value)? onChanged;
  final void Function()? onTap;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? disabledBorderColor;
  final Color? inputBorderColor;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final FormFieldValidator<T>? validator;
  final double? width;
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<T>> items = listOfItem.map((element) {
      return DropdownMenuItem<T>(
        value: element,
        child: Text(
          element.toString().capitalizeFirst!.replaceAll("_", " "),
          overflow: TextOverflow.ellipsis, // ✅ Handle long items
          softWrap: false,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      );
    }).toList();

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width ?? 300, // ✅ Cap at 300 by default
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showTitle || title != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        title ?? '',
                        overflow: TextOverflow.ellipsis,
                        style: textStyle ??
                            Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold, letterSpacing: 1),
                      ),
                    ),
                    const SizedBox(width: 5),
                    if (isRequired)
                      Text(
                        "*",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.error),
                      ),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            ),
          DropdownButtonFormField<T>(
            isExpanded: true, // ✅ Full width dropdown, no clipping
            items: items,
            onTap: onTap,
            dropdownColor: Theme.of(context).canvasColor,
            decoration: InputDecoration(
              filled: true,
              contentPadding: contentPadding ??
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              fillColor: fillColor ?? Colors.transparent,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(RADIUS / 2),
                borderSide: BorderSide(
                  color: enabledBorderColor ?? Colors.black38,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(RADIUS / 2),
                borderSide: BorderSide(
                    color: focusedBorderColor ?? Colors.black54, width: 1.5),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(RADIUS / 2),
                borderSide: const BorderSide(color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(RADIUS / 2),
                borderSide: const BorderSide(color: Colors.red),
              ),
            ),
            onChanged: onChanged,
            style: context.textTheme.bodyLarge?.copyWith(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
            value: value,
            validator: validator,
            hint: Text(
              hint ?? "Select here",
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38),
            ),
          ),
        ],
      ),
    );
  }
}
