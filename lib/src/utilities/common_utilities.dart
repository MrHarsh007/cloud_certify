import 'dart:math';
import 'package:cloud_certify/src/common/constant.dart';
import 'package:flutter/material.dart';

class CommonUtilities {
  static final CommonUtilities _instance = CommonUtilities._internal();

  factory CommonUtilities() {
    return _instance;
  }

  CommonUtilities._internal();

  static Color _generateRandomColor(
      {double opacity = 1.0, bool isSolid = true}) {
    final random = Random();
    final baseColor = isSolid
        ? Color.fromARGB(
            (opacity * 255).toInt(),
            random.nextInt(128), // Red (0-127 for dark shades)
            random.nextInt(128), // Green (0-127 for dark shades)
            random.nextInt(128), // Blue (0-127 for dark shades)
          )
        : Color.fromARGB(
            (opacity * 255).toInt(),
            128 + random.nextInt(128), // Red (128-255 for light shades)
            128 + random.nextInt(128), // Green (128-255 for light shades)
            128 + random.nextInt(128), // Blue (128-255 for light shades)
          );
    return baseColor;
  }

  static Color generateRandomColor(
          {double opacity = 1.0, bool isSolid = false}) =>
      _generateRandomColor(opacity: opacity, isSolid: isSolid);

  // Cached instance of BoxDecoration
  static final BoxDecoration _commonBoxDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: Colors.grey.withOpacity(0.2),
      width: 1,
    ),
    borderRadius: BorderRadius.circular(SMALL_RADIUS),
  );

  /// Getter to access the cached BoxDecoration instance
  static BoxDecoration get commonBoxDecoration => _commonBoxDecoration;

  static Map<String, Color> Function(String status) get generateStatusColor =>
      (String status) {
        switch (status) {
          case "Failed":
          case "Inprogress":
            return {"bg": Colors.red[100]!, "text": Colors.red};
          case "In-progress":
          case "In-Progress":
            return {"bg": Colors.blue[100]!, "text": Colors.blue};
          case "Completed":
          case "New":
          case "Passed":
            return {"bg": Colors.green[100]!, "text": Colors.green};
          case "Popular":
            return {"bg": Colors.blue[100]!, "text": Colors.blue};
          case "Personalized":
            return {"bg": Colors.teal[100]!, "text": Colors.teal};
          default:
            return {"bg": Colors.grey[200]!, "text": Colors.grey};
        }
      };

  static String formatTimeInHrMin(int totalSeconds) {
    final hours = totalSeconds ~/ 3600;
    final minutes = (totalSeconds % 3600) ~/ 60;
    return "${hours}h ${minutes}m";
  }

  static String formatMinutesInMinSec(double seconds) {
    final mins = seconds ~/ 60;
    final secs = (seconds % 60).toInt();
    return "${mins}m ${secs}s";
  }

  static Map<String, Color> topicColorCache = {};

  static Color getConsistentColor(String topic) {
    if (topicColorCache.containsKey(topic)) {
      return topicColorCache[topic]!;
    }

    final color = CommonUtilities.generateRandomColor(isSolid: true);
    topicColorCache[topic] = color;
    return color;
  }
}
