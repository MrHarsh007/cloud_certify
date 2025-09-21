import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common/constant.dart';
import '../utilities/theme/app_colors.dart';

class CommonSocialLoginContainer extends StatelessWidget {
  final Color? bgColor;
  final String svgIMG;
  final double? size;
  final String title;
  final Function()? onTap;
  const CommonSocialLoginContainer(
      {super.key,
      this.bgColor,
      required this.svgIMG,
      this.size,
      this.onTap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(RADIUS),
            border: Border.all(color: Colors.white)),
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgIMG,
              height: size ?? 20,
              width: size ?? 20,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColor.primaryColor, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
