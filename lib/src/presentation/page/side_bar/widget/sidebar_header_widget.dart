import '../../../all_export.dart';

class SidebarHeaderWidget extends StatefulWidget {
  const SidebarHeaderWidget({super.key});

  @override
  State<SidebarHeaderWidget> createState() => _SidebarHeaderWidgetState();
}

class _SidebarHeaderWidgetState extends State<SidebarHeaderWidget> {
  final GlobalKey _menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<SidePanelBloc, SidePanelState>(
            buildWhen: (previous, current) =>
                previous.screenName != current.screenName,
            builder: (context, state) {
              return Text(state.screenName,
                  style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: AppColor.primarySecondaryColor));
            },
          ),
          Row(
            children: [
              // Container(
              //   margin: const EdgeInsets.all(8),
              //   padding: const EdgeInsets.all(8),
              //   decoration: BoxDecoration(
              //       color: Colors.grey[200], shape: BoxShape.circle),
              //   child: const Icon(Icons.notifications),
              // ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(RADIUS),
                  border: Border.all(color: AppColor.streakIconColor, width: 1),
                  color: Colors.transparent,
                ),
                child: Row(
                  children: [
                    HugeIcon(
                        icon: HugeIcons.strokeRoundedFire02,
                        color: AppColor.streakIconColor,
                        size: 20),
                    5.wx,
                    BlocBuilder<StreakBloc, StreakState>(
                      buildWhen: (previous, current) =>
                          previous.streakCount != current.streakCount,
                      builder: (context, state) {
                        return Text(
                          state.streakCount.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFF6820D),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              10.wx,
              BlocBuilder<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
                buildWhen: (previous, current) =>
                    previous.usermodel != current.usermodel,
                builder: (context, state) {
                  return PopupMenuButton<int>(
                      key: _menuKey,
                      constraints:
                          const BoxConstraints(minWidth: 150, maxWidth: 250),
                      surfaceTintColor: Colors.white,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(SMALL_RADIUS),
                        side: BorderSide(color: Colors.grey.shade200),
                      ),
                      tooltip:
                          "${state.usermodel?.fullName ?? ""} \n${state.usermodel?.email ?? ""} \n${state.usermodel?.bio ?? ""}",
                      offset: const Offset(0, 45),
                      onSelected: (value) {
                        if (value == 1) {
                          GoRouter.of(context)
                              .goNamed(AppRoutes.SETTINGS_ROUTE_NAME);
                          context
                              .read<SidePanelBloc>()
                              .add(SidePanelEvent.changeScreenName("Settings"));
                        } else if (value == 2) {
                          showDialog(
                              context: context,
                              builder: (context) => ReusableDialog(
                                  padding: EdgeInsets.all(12),
                                  imageUrl: "",
                                  title: "Confirm Logout",
                                  description:
                                      "Are you sure you want to log out of your account? You will need to sign in again to continue.",
                                  onConfirm: () => logOut(context)),
                              barrierDismissible: false);
                        }
                      },
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 1,
                              child: Row(
                                children: [
                                  Icon(Icons.settings,
                                      color: Colors.black, size: 18),
                                  SizedBox(width: 10),
                                  Text("Settings",
                                      style: context.textTheme.bodyMedium),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 2,
                              child: Row(
                                children: [
                                  Icon(Icons.logout, size: 18),
                                  SizedBox(width: 10),
                                  Text("Logout",
                                      style: context.textTheme.bodyMedium),
                                ],
                              ),
                            ),
                          ],
                      child: UserProfileCircle());
                },
              ),
              10.wx,
            ],
          )
        ],
      ),
    );
  }
}

void logOut(BuildContext context) {
  FirebaseAuth.instance.signOut();
  GoRouter.of(context).goNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
}
