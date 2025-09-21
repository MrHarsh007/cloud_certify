import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../common/constant.dart';
import '../utilities/theme/app_colors.dart';

enum TextFieldType { alphabet, email, text, password, phoneNumber, number }

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.textFieldType = TextFieldType.text,
    this.hintText,
    this.helperText,
    this.onChanged,
    this.maxLength,
    this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines = 1,
    this.helperMaxLines,
    this.textAlign = TextAlign.left,
    this.inputFormatters,
    this.enabled = true,
    this.isReadOnly = false,
    this.textInputAction,
    this.textInputType,
    this.minLength = 1,
    this.minline = 1,
    this.onTap,
    this.title,
    this.autofillHints,
    this.fillColors,
  });

  final TextEditingController? controller;
  final TextFieldType textFieldType;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? title;
  final int? maxLines;
  final int? helperMaxLines;
  final int? maxLength;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int minLength;
  final int minline;
  final Function()? onTap;
  final bool isReadOnly;
  final Iterable<String>? autofillHints;
  final Color? fillColors;

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final alphabetValidator = MultiValidator([
      RequiredValidator(
        errorText: "Please enter a value",
      ),
      PatternValidator(
        r'^[A-Za-z_ .,]+$',
        errorText: "Invalid data format",
      ),
    ]);

    final emailValidator = MultiValidator([
      RequiredValidator(
        errorText: "Please enter your email address",
      ),
      EmailValidator(
        errorText: "Invalid email address format",
      )
    ]);

    final passwordValidator = MultiValidator([
      RequiredValidator(
        errorText: "Please enter your password",
      ),
      MinLengthValidator(
        6,
        errorText: "Password must be more than 6 characters",
      )
    ]);

    // // Enter at least 8 characters with uppercase, lowercase, a number, and a symbol.
    // final passwordValidator = MultiValidator([
    //   RequiredValidator(
    //     errorText: "Please enter your password",
    //   ),
    //   MinLengthValidator(
    //     8,
    //     errorText: "Password must be at least 8 characters",
    //   ),
    //   PatternValidator(
    //     r'(?=.*[A-Z])',
    //     errorText: "Must contain at least one uppercase letter",
    //   ),
    //   PatternValidator(
    //     r'(?=.*[a-z])',
    //     errorText: "Must contain at least one lowercase letter",
    //   ),
    //   PatternValidator(
    //     r'(?=.*[0-9])',
    //     errorText: "Must contain at least one number",
    //   ),
    //   PatternValidator(
    //     r'(?=.*[!@#\$&*~])',
    //     errorText: "Must contain at least one special character",
    //   ),
    // ]);

    final phoneNumberValidator = MultiValidator([
      RequiredValidator(
        errorText: "Please enter your phone number",
      ),
      MinLengthValidator(
        7,
        errorText: "Invalid phone number format",
      ),
      PatternValidator(
        r'^[0-9]+$',
        errorText: "Invalid phone number format",
      ),
    ]);

    final textValidator = MultiValidator([
      RequiredValidator(
        errorText: "Please enter a value",
      ),
      MinLengthValidator(
        widget.minLength,
        errorText: "Data is too short",
      ),
    ]);

    final numberValidator = MultiValidator([
      RequiredValidator(
        errorText: "Please enter a value",
      ),
      MinLengthValidator(
        1,
        errorText: "Data is too short",
      ),
      PatternValidator(
        r'^[0-9]+$',
        errorText: "Invalid number format",
      ),
    ]);

    TextInputType keyboardType(TextFieldType textFieldType) {
      switch (textFieldType) {
        case TextFieldType.alphabet:
          return TextInputType.text;
        case TextFieldType.email:
          return TextInputType.emailAddress;
        case TextFieldType.number:
          return TextInputType.number;
        case TextFieldType.password:
          return TextInputType.text;
        case TextFieldType.phoneNumber:
          return TextInputType.phone;
        case TextFieldType.text:
          return TextInputType.text;
      }
    }

    MultiValidator validator(TextFieldType textFieldType) {
      switch (textFieldType) {
        case TextFieldType.alphabet:
          return alphabetValidator;
        case TextFieldType.email:
          return emailValidator;
        case TextFieldType.number:
          return numberValidator;
        case TextFieldType.password:
          return passwordValidator;
        case TextFieldType.phoneNumber:
          return phoneNumberValidator;
        case TextFieldType.text:
          return textValidator;
      }
    }

    const double SPACE12 = 12;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...[
          Text(
            widget.title ?? "",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold, letterSpacing: 1),
          ),
          const SizedBox(height: 5),
        ],
        TextFormField(
          autofillHints: widget.autofillHints,
          readOnly: widget.isReadOnly,
          controller: widget.controller,
          onTap: widget.onTap,
          undoController: UndoHistoryController(),
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          enabled: widget.enabled,
          cursorColor: AppColor.primaryColor,
          selectionControls: EmptyTextSelectionControls(),
          textAlign: widget.textAlign ?? TextAlign.left,
          obscureText: widget.textFieldType == TextFieldType.password
              ? _obscureText
              : false,
          style: theme.textTheme.bodyLarge?.copyWith(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          inputFormatters: widget.inputFormatters ?? [],
          keyboardType:
              widget.textInputType ?? keyboardType(widget.textFieldType),
          validator: validator(widget.textFieldType).call,
          textInputAction: widget.textInputAction,
          minLines: widget.minline,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            hintText: widget.hintText,
            isDense: widget.maxLength != null,
            hintStyle: theme.textTheme.titleSmall?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black38),
            labelText: widget.labelText,
            labelStyle: theme.textTheme.bodyMedium,
            suffixIcon: widget.textFieldType == TextFieldType.password
                ? IconButton(
                    padding: EdgeInsets.symmetric(horizontal: SPACE12),
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: AppColor.primaryColor,
                    ),
                    onPressed: _toggleObscureText,
                  )
                : widget.suffixIcon,
            prefixIcon: widget.prefixIcon != null
                ? IntrinsicHeight(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 6),
                          child: widget.prefixIcon!,
                        ),
                        const VerticalDivider(
                          width: 1,
                          color: Colors.white,
                          thickness: 1,
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  )
                : null,

            floatingLabelBehavior: FloatingLabelBehavior.auto,
            helperMaxLines: widget.helperMaxLines,
            helperText: widget.helperText,
            helperStyle: theme.textTheme.titleSmall
                ?.copyWith(fontSize: 10, fontWeight: FontWeight.w400),
            fillColor: widget.fillColors ?? Colors.transparent,
            contentPadding: EdgeInsets.symmetric(
                horizontal: SPACE12,
                vertical: widget.maxLength != null ? 12 : 0),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RADIUS / 2),
              borderSide: const BorderSide(color: Colors.black38),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RADIUS / 2),
              borderSide: BorderSide(color: Colors.black54, width: 1.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RADIUS / 2),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RADIUS / 2),
              borderSide: const BorderSide(color: Colors.red),
            ),
            // disabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(RADIUS),
            //   borderSide: BorderSide(color: theme.disabledColor),
            // ),
          ),
        ),
      ],
    );
  }
}
