import 'package:cloud_certify/src/common/debouncer.dart';

import '../../all_export.dart';

class TestLibraryScreen extends StatefulWidget {
  const TestLibraryScreen({super.key});

  @override
  State<TestLibraryScreen> createState() => _TestLibraryScreenState();
}

class _TestLibraryScreenState extends State<TestLibraryScreen> {
  late ScrollController _scrollController;
  late CommonDebouncer debouncer;

  @override
  void initState() {
    _scrollController = ScrollController();
    debouncer = CommonDebouncer(milliseconds: 500);

    context
        .read<SidePanelBloc>()
        .add(SidePanelEvent.changeScreenName("Test Library"));

    fetchAllTest();
    final personalizeBloc = context.read<PersonalizedCoursesBloc>();

    if (personalizeBloc.state.recommendationsTest.isEmpty) {
      Future.delayed(
        const Duration(seconds: 1),
        () => personalizeBloc
            .add(const PersonalizedCoursesEvent.fetchUserPersonalizedCourses()),
      );
    }

    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    debouncer.dispose();

    super.dispose();
  }

  void fetchAllTest() {
    final getTestState = context.read<GetTestBloc>().state;
    if (getTestState.allTest.isEmpty) {
      context.read<GetTestBloc>().add(const GetTestEvent.getAllTest());
    }
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    final isBottom = currentScroll >= (maxScroll * 0.9);

    if (isBottom) {
      final getAllTestBloc = context.read<GetTestBloc>();
      if (!getAllTestBloc.state.state.isUpdating &&
          getAllTestBloc.state.hasMoreData) {
        getAllTestBloc.add(const GetTestEvent.getAllTest(fetchMore: true));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile ||
        ResponsiveBreakpoints.of(context).isTablet;
    return SideBarScreen(
        index: 1,
        secondScreen: BlocBuilder<GetTestBloc, GetTestState>(
          buildWhen: (previous, current) =>
              previous.searchQuery != current.searchQuery ||
              previous.state != current.state,
          builder: (context, getTestState) {
            return ListView(
              controller: _scrollController,
              padding: EdgeInsets.all(16),
              children: [
                FadeInDown(
                    duration: const Duration(milliseconds: 400),
                    child: TestLibraryHeaderWidget(debouncer: debouncer)),
                20.hx,
                if (getTestState.state.isLoading)
                  SizedBox()
                else if (getTestState.searchQuery?.isEmpty ?? true) ...[
                  isMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                              _buildFeaturePopularTest(getTestState, isMobile))
                      : IntrinsicHeight(
                          child: Row(
                            children: _buildFeaturePopularTest(
                                getTestState, isMobile),
                          ),
                        ),
                ],
                20.hx,
                FadeInUp(
                    duration: const Duration(milliseconds: 400),
                    delay: Duration(milliseconds: 800),
                    child: TestListWidget()),
              ],
            );
          },
        ));
  }

  List<Widget> _buildFeaturePopularTest(
      GetTestState getTestState, bool isMobile) {
    return [
      if (getTestState.featuredCourse != null) ...[
        isMobile
            ? _buildFeatureTest(getTestState)
            : Expanded(
                child: _buildFeatureTest(getTestState),
              ),
        20.wx,
      ],
      20.hx,
      if (getTestState.mostpopularCourse != null) ...[
        isMobile
            ? _buildPopularTest(getTestState)
            : Expanded(
                child: _buildPopularTest(getTestState),
              ),
        20.wx,
      ],
    ];
  }

  Widget _buildFeatureTest(GetTestState getTestState) {
    return FadeInLeft(
        duration: const Duration(milliseconds: 400),
        delay: Duration(milliseconds: 500),
        child: FeaturedTestWidget(
          isFeatured: true,
          testId: getTestState.featuredCourse?.id ?? '',
          name: getTestState.featuredCourse?.title ?? '',
          description: getTestState.featuredCourse?.description ?? '',
          duration: getTestState.featuredCourse?.duration ?? 0,
          questions: getTestState.featuredCourse?.totalQuestions ?? 0,
          level: getTestState.featuredCourse?.difficulty.capitalize ?? '',
        ));
  }

  Widget _buildPopularTest(GetTestState getTestState) {
    return FadeInRight(
        duration: const Duration(milliseconds: 400),
        delay: Duration(milliseconds: 500),
        child: FeaturedTestWidget(
          isFeatured: false,
          testId: getTestState.mostpopularCourse?.id ?? '',
          name: getTestState.mostpopularCourse?.title ?? '',
          description: getTestState.mostpopularCourse?.description ?? '',
          duration: getTestState.mostpopularCourse?.duration ?? 0,
          questions: getTestState.mostpopularCourse?.totalQuestions ?? 0,
          level: getTestState.mostpopularCourse?.difficulty.capitalize ?? '',
        ));
  }
}
