import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'common_button.dart';
import '../common/constant.dart';
import '../utilities/theme/app_colors.dart';

class EnterOTPDialog extends StatefulWidget {
  final String enterOtpText;
  final String otpMessage;
  final String verifyButtonText;
  final String didNotRecieveText;
  final String resendText;
  final void Function() onVerifyTap;
  final void Function() onResendTap;
  final Function(String)? otpOnChanged;
  final ThemeData theme;
  final bool isLoading;

  const EnterOTPDialog({
    super.key,
    required this.enterOtpText,
    required this.otpMessage,
    required this.verifyButtonText,
    required this.didNotRecieveText,
    required this.resendText,
    required this.onVerifyTap,
    required this.theme,
    required this.onResendTap,
    this.otpOnChanged,
    this.isLoading = false,
  });

  @override
  _EnterOTPDialogState createState() => _EnterOTPDialogState();
}

class _EnterOTPDialogState extends State<EnterOTPDialog> {
  bool isResendClickable = true;
  int countdown = 30;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
  }

  void startTimer() {
    isResendClickable = false;
    countdown = 30;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdown == 0) {
        setState(() {
          isResendClickable = true;
        });
        _timer?.cancel();
      } else {
        setState(() {
          countdown--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = widget.theme.textTheme;
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 50,
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
    );

    // Define the theme when the pin is focused
    final focusedPinTheme = defaultPinTheme.copyWith(
      height: 54,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColor.primaryColor),
      ),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.enterOtpText,
          textAlign: TextAlign.center,
          style: textTheme.titleLarge?.copyWith(fontSize: 22),
        ),
        const SizedBox(height: 10),
        Text(
          widget.otpMessage,
          textAlign: TextAlign.center,
          style: textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
        ),
        const SizedBox(height: 20),
        Pinput(
          length: 6,
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: focusedPinTheme,
          onChanged: widget.otpOnChanged,
        ),
        const SizedBox(height: 30),
        Flexible(
          child: CustomElevatedButton(
            label: widget.verifyButtonText,
            onTap: widget.onVerifyTap,
            isLoading: widget.isLoading,
          ),
        ),
        const SizedBox(height: 15),
        FittedBox(
          fit: BoxFit.cover,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${widget.didNotRecieveText} ",
                style: textTheme.titleSmall
                    ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              isResendClickable
                  ? InkWell(
                      onTap: () {
                        startTimer();
                        widget.onResendTap();
                      },
                      child: Text(
                        widget.resendText,
                        style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    )
                  : Text(
                      "${widget.resendText} ($countdown s)",
                      style: textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600, fontSize: 14),
                    )
            ],
          ),
        )
      ],
    );
  }
}

final defaultPinTheme = PinTheme(
  width: 56,
  height: 50,
  textStyle: const TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  ),
  decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(RADIUS),
      border: Border.all(color: Colors.black45)),
);

// Define the theme when the pin is focused
final focusedPinTheme = defaultPinTheme.copyWith(
  height: 54,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(RADIUS),
    border: Border.all(color: AppColor.primaryColor),
  ),
);
