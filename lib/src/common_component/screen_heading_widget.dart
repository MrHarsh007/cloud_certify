import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/constant.dart';

class ScreenHeadingWidget extends StatelessWidget {
  final String title;
  final bool isBack;
  final bool rightLogoVisible;
  final Widget? trailing;
  final BuildContext context;
  final bool isDashboard;
  const ScreenHeadingWidget(
      {super.key,
      required this.title,
      required this.context,
      this.isBack = false,
      this.rightLogoVisible = false,
      this.isDashboard = false,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isDashboard
                ? GestureDetector(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: const Icon(Icons.menu_outlined, size: 24))
                : isBack
                    ? GestureDetector(
                        onTap: () => GoRouter.of(context).pop(context),
                        child: const Icon(Icons.arrow_back_ios, size: 22),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset(
                          "assets/logo/logo.png",
                          height: 50,
                          fit: BoxFit.cover,
                        )),
            Text(
              title,
              style: textTheme.headlineSmall
                  ?.copyWith(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            isDashboard
                ? Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(RADIUS),
                    ),
                    child:
                        const Icon(Icons.notifications_none_rounded, size: 24))
                : trailing ?? const SizedBox()
          ],
        ));
  }
}
