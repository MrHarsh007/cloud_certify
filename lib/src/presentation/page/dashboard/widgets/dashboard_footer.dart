import '../../../all_export.dart';

class DashboardFooterWidget extends StatelessWidget {
  const DashboardFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile ||
        ResponsiveBreakpoints.of(context).isTablet;
    final width = isMobile ? null : MediaQuery.sizeOf(context).width * 0.25;
    return Container(
      padding: EdgeInsets.all(BOX_PADDING),
      decoration: CommonUtilities.commonBoxDecoration
          .copyWith(color: AppColor.primarySecondaryColor),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ready to accelerate your learning?",
            style: context.textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
          ),
          10.hx,
          Text(
            "Start your GCP certification journey with interactive practice tests and personalized study materials.",
            style: context.textTheme.bodyMedium?.copyWith(color: Colors.white),
          ),
          15.hx,
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Wrap(
              runSpacing: 15,
              spacing: 15,
              alignment: WrapAlignment.spaceBetween,
              children: [
                _button(
                  width: width,
                  context: context,
                  text: "Take a Practice Test",
                  onTap: () => GoRouter.of(context)
                      .goNamed(AppRoutes.TEST_LIBRARY_ROUTE_NAME),
                  icon: Assets.svg.testLibrary,
                  color: CommonUtilities.generateRandomColor(
                      opacity: 0.5, isSolid: false),
                ),
                _button(
                  width: width,
                  context: context,
                  text: "Ask Al Assistant",
                  onTap: () => showCommonToast(
                      context: context,
                      message: "Coming Soon...",
                      notificationType: ToastificationType.success),
                  icon: Assets.svg.aiChatbot,
                  color: CommonUtilities.generateRandomColor(
                      opacity: 0.5, isSolid: false),
                ),
                _button(
                  width: width,
                  context: context,
                  text: "Browse Resources",
                  onTap: () => GoRouter.of(context)
                      .goNamed(AppRoutes.RESOURCES_ROUTE_NAME),
                  icon: Assets.svg.resources,
                  color: CommonUtilities.generateRandomColor(
                      opacity: 0.5, isSolid: false),
                ),
              ],
            ),
          ),
          10.hx,
        ],
      ),
    );
  }

  InkWell _button(
      {required double? width,
      required BuildContext context,
      required Function() onTap,
      required String text,
      required String icon,
      required Color color}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: width,
        decoration: CommonUtilities.commonBoxDecoration.copyWith(
            border: Border.all(color: Colors.white38),
            color: AppColor.primarySecondaryColor.withOpacity(0.01)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon, height: 16, width: 16, color: Colors.white),
            10.wx,
            Text(text,
                style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
