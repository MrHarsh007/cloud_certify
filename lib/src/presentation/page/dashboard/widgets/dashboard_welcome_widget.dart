import '../../../all_export.dart';

class DashboardWelcomeWidget extends StatelessWidget {
  const DashboardWelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile ||
        ResponsiveBreakpoints.of(context).isTablet;
    return Container(
      padding: EdgeInsets.all(BOX_PADDING),
      decoration: CommonUtilities.commonBoxDecoration,
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _buildWidgets(context))
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _buildWidgets(context),
            ),
    );
  }

  List<Widget> _buildWidgets(BuildContext context) {
    return [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
            buildWhen: (previous, current) =>
                previous.usermodel != current.usermodel,
            builder: (context, state) {
              return Text(
                  "Welcome ${state.usermodel?.fullName ?? ""} to Cloud Certify",
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColor.primarySecondaryColor,
                  ));
            },
          ),
          5.hx,
          Text(
            "Ready to continue your GCP certification journey?",
            style: context.textTheme.bodyMedium,
          )
        ],
      ),
      15.hx,
      CustomElevatedButton(
        width: 170,
        height: 40,
        backgroundColor: AppColor.primarySecondaryColor,
        radius: RADIUS / 2,
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        onTap: () {
          GoRouter.of(context).goNamed(AppRoutes.TEST_LIBRARY_ROUTE_NAME);
        },
        label: "Start Practice Test",
      ),
    ];
  }
}
