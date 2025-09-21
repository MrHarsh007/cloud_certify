import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../common_component/common_button.dart';
import 'package:lottie/lottie.dart';

class CustomDialog extends StatelessWidget {
  final String? svgAssetPath;
  final String? lottieAssetPath;
  final String? title;
  final String? description;
  final String? firstButtonText;
  final String? secondButtonText;
  final VoidCallback? onFirstButtonPressed;
  final VoidCallback? onSecondButtonPressed;

  const CustomDialog({
    super.key,
    this.svgAssetPath,
    this.lottieAssetPath,
    this.title,
    this.description,
    this.firstButtonText,
    this.secondButtonText,
    this.onFirstButtonPressed,
    this.onSecondButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (svgAssetPath != null) ...[
              SvgPicture.asset(svgAssetPath!, height: 80, width: 80),
              const SizedBox(height: 20),
            ],
            if (lottieAssetPath != null) ...[
              Lottie.asset(lottieAssetPath!,
                  height: 150, width: 150, repeat: false),
              const SizedBox(height: 10),
            ],
            if (title != null) ...[
              Text(
                title!,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.w600, fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
            ],
            if (description != null) ...[
              Text(
                description!,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
            ],
            if (firstButtonText != null || secondButtonText != null) ...[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (firstButtonText != null)
                    CustomElevatedButton(
                      onTap: onFirstButtonPressed!,
                      label: firstButtonText!,
                    ),
                  if (firstButtonText != null && secondButtonText != null)
                    const SizedBox(height: 12),
                  if (secondButtonText != null)
                    CustomElevatedButton(
                      onTap: onSecondButtonPressed!,
                      label: secondButtonText!,
                      backgroundColor: Colors.white,
                      labelColor: Theme.of(context).primaryColor,
                    ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
