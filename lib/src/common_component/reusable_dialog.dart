import 'package:flutter/material.dart';
import '../common/constant.dart';
import '../utilities/theme/app_colors.dart';
import 'common_button.dart';
import 'package:lottie/lottie.dart';

class ReusableDialog extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String? moreDetails;
  final VoidCallback onConfirm;
  final VoidCallback? onCancel;
  final String confirmButtonText;
  final String cancelButtonText;
  final bool showCancelButton;
  final double imageSize;
  final bool isLoading;
  final EdgeInsetsGeometry? padding;

  const ReusableDialog({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.onConfirm,
    this.moreDetails,
    this.onCancel,
    this.confirmButtonText = "Confirm",
    this.cancelButtonText = "Cancel",
    this.showCancelButton = true,
    this.imageSize = 150,
    this.isLoading = false,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RADIUS),
      ),
      insetPadding: const EdgeInsets.all(24),
      content: Container(
        padding: padding ?? const EdgeInsets.all(24),
        constraints: BoxConstraints(maxWidth: 400),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (imageUrl.isNotEmpty) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: imageUrl.endsWith(".json")
                    ? Lottie.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                        width: imageSize,
                        height: imageSize,
                      )
                    : Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        width: imageSize,
                        height: imageSize,
                      ),
              ),
              const SizedBox(height: 20),
            ],
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            if (moreDetails != null) ...[
              Center(
                child: Text(
                  moreDetails!,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 10),
            ],
            Text(
              description,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomElevatedButton(
                  width: 350,
                  isLoading: isLoading,
                  onTap: onConfirm,
                  label: confirmButtonText,
                  height: 45,
                  radius: SMALL_RADIUS,
                ),
                if (showCancelButton) ...[
                  const SizedBox(height: 10),
                  CustomElevatedButton(
                    onTap: () {
                      if (onCancel != null) {
                        onCancel!();
                      }
                      Navigator.pop(context);
                    },
                    height: 45,
                    width: 350,
                    radius: SMALL_RADIUS,
                    label: cancelButtonText,
                    backgroundColor: Colors.white,
                    borderColor: AppColor.primaryColor,
                    labelColor: AppColor.primaryColor,
                  )
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
