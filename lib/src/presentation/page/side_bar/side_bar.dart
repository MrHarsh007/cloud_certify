import 'package:cloud_certify/src/presentation/page/test_history_details/test_history_details_screen.dart';
import '../../all_export.dart';

class SideBarScreen extends StatefulWidget {
  final Widget secondScreen;
  final int? index;

  const SideBarScreen({super.key, required this.secondScreen, this.index});

  @override
  State<SideBarScreen> createState() => _SideBarScreenState();
}

class _SideBarScreenState extends State<SideBarScreen> {
  @override
  void initState() {
    final sidePanelState = context.read<SidePanelBloc>().state;
    if (sidePanelState.isLastAccessLogged == false) {
      context.read<SidePanelBloc>().add(SidePanelEvent.logLastAccess(true));
      context.read<RecentActivityBloc>().add(
          RecentActivityEvent.addActivityDetail(
              activity: ACCOUNT_LAST_ACCESS_ACTIVITY));
    }
    loadStreakData();
    super.initState();
  }

  // Fetch the daily streak and today's question when the screen is initialized
  void loadStreakData() {
    final streakBloc = context.read<StreakBloc>();
    // Check if the daily streak and today's question are null
    // If they are, dispatch events to fetch them
    if (streakBloc.state.dailyStreak == null) {
      streakBloc.add(const StreakEvent.getStreak());
    }
    // Check if the today's question is null
    // If it is, dispatch an event to fetch it
    if (streakBloc.state.todayQuestion == null) {
      streakBloc.add(const StreakEvent.getTodayQuestion());
    }

    final authWatcherBloc = context.read<AuthenticatorWatcherBloc>();
    if (authWatcherBloc.state.usermodel == null) {
      authWatcherBloc.add(const AuthenticatorWatcherEvent.authCheckRequest());
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 768; // Responsive breakpoint for mobile

    return BlocListener<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
      listenWhen: (previous, current) => previous.state != current.state,
      listener: (context, state) {
        if (state.state == UserState.unauthenticated ||
            state.state == UserState.error) {
          GoRouter.of(context).goNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
        }
      },
      child: Scaffold(
        floatingActionButton: wiredashFloatingActionButton(context),
        backgroundColor: Colors.grey[100],
        appBar: isMobile
            ? AppBar(
                toolbarHeight: 40,
                backgroundColor: const Color(0xFFFDF7F4), // Match background
                actions: [
                  PopupMenuButton<int>(
                    icon: const Icon(Icons.menu),
                    color: AppColor.white, // Set popup menu bg color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded edges
                    ),
                    onSelected: (selectedIndex) {
                      context
                          .read<SidePanelBloc>()
                          .add(SidePanelEvent.changeCurrenIndex(selectedIndex));
                      context.goNamed(menuItems[selectedIndex].pageRoute);
                    },
                    itemBuilder: (context) => menuItems
                        .asMap()
                        .entries
                        .map((entry) => PopupMenuItem<int>(
                              value: entry.key,
                              child: Container(
                                color: (widget.index == entry.key)
                                    ? AppColor.white // Highlight active menu
                                    : Colors.transparent,
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      entry.value.icon,
                                      height: 20,
                                      width: 20,
                                    ), // Icon
                                    const SizedBox(width: 10),
                                    Text(
                                      entry.value.name,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: (widget.index == entry.key)
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ],
              )
            : null,
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  if (!isMobile)
                    BlocBuilder<SidePanelBloc, SidePanelState>(
                      buildWhen: (previous, current) =>
                          previous.isExpanded != current.isExpanded,
                      builder: (context, state) {
                        return AnimatedContainer(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.ease,
                            width: state.isExpanded ? 250 : 70,
                            child: SideBarWidget(currentIndex: widget.index));
                      },
                    ),
                  Expanded(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SidebarHeaderWidget(),
                      Flexible(child: widget.secondScreen),
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<SideBarModel> menuItems = [
  SideBarModel(
      name: "Dahboard",
      icon: Assets.svg.dashboard,
      pageRoute: AppRoutes.DASHBOARD_ROUTE_NAME),
  SideBarModel(
      name: "Test Library",
      icon: Assets.svg.testLibrary,
      pageRoute: AppRoutes.TEST_LIBRARY_ROUTE_NAME),
  SideBarModel(
      name: "Test History",
      icon: Assets.svg.testHistory,
      pageRoute: AppRoutes.TEST_HISTORY_ROUTE_NAME),
  SideBarModel(
      name: "Leaderboard",
      icon: Assets.svg.leaderboard,
      pageRoute: AppRoutes.LEADERBOARD_ROUTE_NAME),
  SideBarModel(
      name: "Resources",
      icon: Assets.svg.resources,
      pageRoute: AppRoutes.RESOURCES_ROUTE_NAME),
  SideBarModel(
      name: "Setting",
      icon: Assets.svg.setting,
      pageRoute: AppRoutes.SETTINGS_ROUTE_NAME),
];
