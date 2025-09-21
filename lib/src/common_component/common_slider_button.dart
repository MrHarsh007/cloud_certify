import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

import '../common/constant.dart'; // For vibration

class ReusableSliderButton extends StatelessWidget {
  final String label;
  final String svgPath;
  final Future<bool?> Function() action;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final double buttonSize;
  final bool vibrationFlag;
  final bool shimmer;
  final double verticlePadding;
  final double horizontalPadding;

  const ReusableSliderButton({
    super.key,
    required this.label,
    required this.svgPath,
    required this.action,
    this.backgroundColor = const Color(0xFF6E956A),
    this.textColor = Colors.white,
    this.height = 55,
    this.buttonSize = 65,
    this.vibrationFlag = true,
    this.shimmer = true,
    this.verticlePadding = 6,
    this.horizontalPadding = 6,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // Optionally trigger vibration feedback
        if (vibrationFlag) {
          HapticFeedback.mediumImpact();
        }
        await action();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor, // Button color
        elevation: 4, // Add elevation
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RADIUS), // Rounded corners
        ),
        padding: EdgeInsets.symmetric(
            vertical: verticlePadding, horizontal: horizontalPadding),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: height,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              margin: EdgeInsets.symmetric(
                  vertical: verticlePadding, horizontal: horizontalPadding),
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                svgPath,
                height: 40,
                width: 40,
              ),
            ),
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: textColor,
                    ),
              ),
            ),
            const SizedBox(
              height: 40,
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}
