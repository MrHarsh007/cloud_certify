import 'package:flutter/material.dart';

/// A reusable bottom sheet widget with customizable content and animation.
class AnimatedBottomSheet {
  /// Displays the bottom sheet with animation.
  static void show({
    required BuildContext context,
    required Widget child,
    double? height, // Optional height; if null, height adjusts to content
    bool isDismissible =
        true, // Determines if the bottom sheet can be dismissed
    bool enableDrag = true, // Allows dragging to close the bottom sheet
  }) {
    assert(
      height == null ||
          (height > 0 && height <= MediaQuery.of(context).size.height),
      'Height should be a positive value and less than or equal to the screen height.',
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Makes the bottom sheet height adaptive
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      backgroundColor: Colors.transparent, // For rounded corners
      builder: (BuildContext context) {
        return _AnimatedSheetContainer(
          height: height,
          child: child,
        );
      },
    );
  }
}

/// A container for the bottom sheet with animations and rounded corners.
class _AnimatedSheetContainer extends StatelessWidget {
  final Widget child;
  final double? height;

  const _AnimatedSheetContainer({required this.child, this.height});

  @override
  Widget build(BuildContext context) {
    // Determine height based on content or provided value

    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      constraints: BoxConstraints(
        maxHeight:
            MediaQuery.of(context).size.height * 0.9, // Enforce a max height
      ),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20), // Rounded corners at the top
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: child, // Allows child content to scroll if it overflows
      ),
    );
  }
}
