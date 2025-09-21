import '../../all_export.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    final personalizeBloc = context.read<PersonalizedCoursesBloc>();

    if (personalizeBloc.state.recommendationsTest.isEmpty) {
      personalizeBloc
          .add(const PersonalizedCoursesEvent.fetchUserPersonalizedCourses());
    }

    fetchAllTest();
    super.initState();
  }

  void fetchAllTest() {
    final getTestState = context.read<GetTestBloc>().state;
    if (getTestState.allTest.isEmpty) {
      context.read<GetTestBloc>().add(const GetTestEvent.getAllTest());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideBarScreen(
        index: 0,
        secondScreen: ListView(
          padding: EdgeInsets.all(16),
          children: [
            FadeInDown(
                duration: const Duration(milliseconds: 400),
                child: DashboardWelcomeWidget()),
            20.hx,
            FadeInRight(
                duration: const Duration(milliseconds: 400),
                delay: Duration(milliseconds: 400),
                child: DailyStreakWidget()),
            20.hx,
            FadeInUp(
                duration: const Duration(milliseconds: 400),
                delay: Duration(milliseconds: 800),
                child: RecentActivityWidget()),
            20.hx,
            DashboardFooterWidget(),
          ],
        ));
  }
}
