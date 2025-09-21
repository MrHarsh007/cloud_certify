import '../../../all_export.dart';

class RecentActivityWidget extends StatefulWidget {
  const RecentActivityWidget({super.key});

  @override
  State<RecentActivityWidget> createState() => _RecentActivityWidgetState();
}

class _RecentActivityWidgetState extends State<RecentActivityWidget> {
  final double height = 500;

  @override
  void initState() {
    super.initState();

    final recentActivityBloc = context.read<RecentActivityBloc>();
    if (recentActivityBloc.state.activities == null) {
      recentActivityBloc.add(const RecentActivityEvent.fetchRecentActivity());
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile ||
        ResponsiveBreakpoints.of(context).isTablet;

    return isMobile
        ? Column(
            children: [
              _recentActivity(),
              20.hx,
              _reccomendedTest(),
            ],
          )
        : SizedBox(
            height: height,
            child: Row(
              children: [
                Expanded(flex: 1, child: _recentActivity()),
                30.wx,
                Expanded(flex: 1, child: _reccomendedTest()),
              ],
            ),
          );
  }

  Widget _recentActivity() {
    return Container(
      constraints: BoxConstraints(maxHeight: height),
      padding: EdgeInsets.all(BOX_PADDING),
      decoration: CommonUtilities.commonBoxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recent Activity", style: context.textTheme.titleLarge),
          15.hx,
          Flexible(
            child: BlocBuilder<RecentActivityBloc, RecentActivityState>(
              buildWhen: (previous, current) =>
                  previous.activities != current.activities,
              builder: (context, state) {
                if (state.state.isLoading) {
                  return const Center(
                    child: CommonLoader(),
                  );
                } else if (state.activities?.activities.isEmpty ?? true) {
                  return const Center(
                    child: NoSearchResultFound(
                      title: "No Recent Activity",
                      description:
                          "You haven't attempted any tests recently. Your recent activity will show up here once you start practicing!",
                      icon: Icons.history,
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: state.activities?.activities.length,
                  itemBuilder: (context, index) {
                    final e = state.activities?.activities[index];

                    return Container(
                      margin: EdgeInsets.only(bottom: 15),
                      padding: EdgeInsets.all(BOX_PADDING),
                      decoration: BoxDecoration(
                        color: CommonUtilities.generateRandomColor(
                            isSolid: true, opacity: 0.1),
                        borderRadius: BorderRadius.circular(SMALL_RADIUS),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e?.activity ?? "",
                            style: context.textTheme.titleMedium,
                          ),
                          5.hx,
                          Text(
                            CommonAssets.formatTimestamp(e?.timestamp ?? 0),
                            style: context.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _reccomendedTest() {
    return Container(
        constraints: BoxConstraints(maxHeight: height),
        padding: EdgeInsets.all(BOX_PADDING),
        decoration: CommonUtilities.commonBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Recommended Test", style: context.textTheme.titleLarge),
            15.hx,
            Flexible(
              child: BlocBuilder<PersonalizedCoursesBloc,
                  PersonalizedCoursesState>(
                builder: (context, state) {
                  if (state.state.isLoading) {
                    return const Center(
                      child: CommonLoader(),
                    );
                  } else if (state.recommendationsTest.isEmpty) {
                    return const Center(
                      child: NoSearchResultFound(
                        title: "No Personalized Result Available",
                        description:
                            "It looks like we don't have personalized suggestions for you yet. Start exploring or attempt a few tests to tailor recommendations for you!",
                        icon: Icons.error_outline,
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: recommendedTests.length,
                      itemBuilder: (context, index) {
                        final e = state.recommendationsTest[index];

                        return Container(
                          margin: EdgeInsets.only(bottom: 15),
                          padding: EdgeInsets.all(BOX_PADDING),
                          decoration: BoxDecoration(
                            color: CommonUtilities.generateStatusColor(e
                                        .recommendationType.name
                                        .replaceAll("_", "")
                                        .capitalize ??
                                    "")['bg']
                                ?.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(SMALL_RADIUS),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      e.title,
                                      style: context.textTheme.titleMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w600),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: CommonUtilities
                                        .commonBoxDecoration
                                        .copyWith(
                                            color: CommonUtilities
                                                .generateStatusColor(e
                                                        .recommendationType.name
                                                        .replaceAll("_", "")
                                                        .capitalize ??
                                                    "")['text']),
                                    child: Text(
                                      e.recommendationType.name
                                              .replaceAll("_", "")
                                              .capitalize ??
                                          "",
                                      style:
                                          context.textTheme.bodySmall?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              5.hx,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Category: ${e.category.capitalize ?? ""} ",
                                        style: context.textTheme.bodyMedium,
                                      ),
                                      Text(
                                        "Difficulty: ${e.difficulty.capitalize ?? ""}",
                                        style: context.textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                  BlocConsumer<StarStopSumbitTestBloc,
                                          StarStopSumbitTestState>(
                                      listenWhen: (previous, current) =>
                                          previous.state != current.state,
                                      buildWhen: (previous, current) =>
                                          previous.state != current.state,
                                      listener: (context, state) {
                                        if (state.state.isError) {
                                          showCommonToast(
                                            context: context,
                                            message: state.message,
                                            notificationType:
                                                ToastificationType.error,
                                          );
                                        }
                                        if (state.state.isLoaded &&
                                            state.attemptId != null) {
                                          GoRouter.of(context).goNamed(
                                              AppRoutes.PRACTICE_ROUTE_NAME,
                                              pathParameters: {
                                                "attempt_id":
                                                    state.attemptId ?? "",
                                                "test_id": state.testId ?? "",
                                                "from": AppRoutes
                                                    .DASHBOARD_ROUTE_NAME,
                                              });
                                        }
                                      },
                                      builder: (context, state) {
                                        return InkWell(
                                          onTap: () => context
                                              .read<StarStopSumbitTestBloc>()
                                              .add(
                                                StarStopSumbitTestEvent
                                                    .startTest(
                                                  testId: e.testId,
                                                ),
                                              ),
                                          child: Text(
                                            (state.state.isLoading &&
                                                    state.testId == e.testId)
                                                ? "Loading..."
                                                : e.recommendationType ==
                                                        RecommendationType
                                                            .inProgress
                                                    ? "Resume"
                                                    : "Start",
                                            style: context.textTheme.titleSmall
                                                ?.copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: CommonUtilities
                                                  .generateStatusColor(e
                                                          .recommendationType
                                                          .name
                                                          .replaceAll("_", "")
                                                          .capitalize ??
                                                      "")['text'],
                                            ),
                                          ),
                                        );
                                      }),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ));
  }
}
