import 'package:flutter/material.dart';
import '../utilities/theme/app_text_style.dart';

class CommonHeaderWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final bool isMobile;
  final EdgeInsets? padding;
  final BoxDecoration? decoration;

  const CommonHeaderWidget({
    super.key,
    required this.title,
    this.subtitle,
    this.trailing,
    this.isMobile = false,
    this.padding,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      decoration: decoration ??
          BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeaderContent(),
                if (trailing != null) ...[
                  const SizedBox(height: 20),
                  trailing!,
                ],
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildHeaderContent(),
                if (trailing != null) trailing!,
              ],
            ),
    );
  }

  Widget _buildHeaderContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.titleMedium.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 5),
          Text(
            subtitle!,
            style: AppTextStyle.bodyMedium,
          ),
        ],
      ],
    );
  }
}
