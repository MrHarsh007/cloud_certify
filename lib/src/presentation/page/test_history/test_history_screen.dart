import 'package:cloud_certify/src/presentation/page/test_history/widgets/badge_widget.dart';
import 'package:toastification/toastification.dart';

import '../../all_export.dart';

class TestHistoryScreen extends StatefulWidget {
  const TestHistoryScreen({super.key});

  @override
  State<TestHistoryScreen> createState() => _TestHistoryScreenState();
}

class _TestHistoryScreenState extends State<TestHistoryScreen> {
  @override
  void initState() {
    context
        .read<SidePanelBloc>()
        .add(SidePanelEvent.changeScreenName("Test History"));
    final testHistoryState = BlocProvider.of<TestHistoryBloc>(context).state;
    if (testHistoryState.testHistory.isEmpty) {
      context.read<TestHistoryBloc>().add(TestHistoryEvent.getTestHistory());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SideBarScreen(
        index: 2,
        secondScreen: ListView(
          padding: EdgeInsets.all(16),
          children: [
            FadeInDown(
                duration: const Duration(milliseconds: 400),
                child: TestHistoryHeaderWidget()),
            20.hx,
            BlocBuilder<TestHistoryBloc, TestHistoryState>(
              builder: (context, state) {
                if (state.state.isLoading) {
                  return SizedBox(
                    height: 300,
                    child: ListView(
                      children: [
                        CommonLoader(),
                      ],
                    ),
                  );
                }

                return Column(
                  children: [
                    FadeInRight(
                      curve: Curves.easeIn,
                      delay: Duration(milliseconds: 400),
                      duration: const Duration(milliseconds: 400),
                      child: TestSummaryStats(
                        // dummy static value
                        totalTestsAttempted:
                            state.userStatistics?.totalTestsAttempted,
                        totalPracticeTests:
                            state.userStatistics?.totalPracticeTests,
                        totalRealTests: state.userStatistics?.totalRealTests,
                        avgScore: state.userStatistics?.avgScore.toDouble(),
                        bestScore: state.userStatistics?.bestScore.toDouble(),
                        totalTimeSpent: state.userStatistics?.totalTimeSpent,
                        avgTimePerTest:
                            state.userStatistics?.avgTimePerTest.toDouble(),
                        totalQuestionsAttempted:
                            state.userStatistics?.totalQuestionsAttempted,
                        totalCorrectAnswers:
                            state.userStatistics?.totalCorrectAnswers,
                        accuracyRate:
                            state.userStatistics?.accuracyRate.toDouble(),
                      ),
                    ),
                    20.hx,
                    if (state.testHistory.isEmpty)
                      NoSearchResultFound(
                          title: "No test history found",
                          description: state.searchQuery != null
                              ? "We couldn't find any tests matching your search. Keep exploring!"
                              : "We couldn't find any tests history. Keep exploring!",
                          icon: Icons.history)
                    else
                      FadeInUp(
                        curve: Curves.easeIn,
                        delay: Duration(milliseconds: 800),
                        duration: const Duration(milliseconds: 400),
                        child: SizedBox(
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(SMALL_RADIUS),
                            child: CustomPaginatedDataTable(
                              headingRowColor:
                                  WidgetStatePropertyAll(Colors.white),
                              dataRowColor:
                                  WidgetStatePropertyAll(Colors.white),
                              footerColor: Colors.white,
                              primary: false,
                              columnSpacing: 24,
                              horizontalMargin: 30,
                              dataRowHeight: 55,
                              rowsPerPage: state.rowPerPages,
                              availableRowsPerPage: const [
                                5,
                                10,
                                15,
                                20,
                                25,
                                30
                              ],
                              onRowsPerPageChanged: (value) =>
                                  context.read<TestHistoryBloc>().add(
                                        TestHistoryEvent.changeRowPerPage(
                                            rowPerPage: value ?? 10),
                                      ),
                              showCheckboxColumn: false,
                              showFirstLastButtons: true,
                              columns: const [
                                DataColumn(label: Text('TEST NAME')),
                                DataColumn(label: Text('DATE')),
                                // DataColumn(label: Text('MODE')),
                                DataColumn(label: Text('SCORE')),
                                DataColumn(label: Text('DURATION')),
                                DataColumn(label: Text('STATUS')),
                                DataColumn(label: Text('ACTIONS')),
                              ],
                              source: TestHistoryDataSource(
                                  state.searchQuery != null
                                      ? state.searchTestHistory
                                      : state.testHistory,
                                  context),
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            )
          ],
        ));
  }
}

class TestHistoryDataSource extends DataTableSource {
  final List<TestAttemptSummary> data;
  final BuildContext context;

  TestHistoryDataSource(this.data, this.context);

  @override
  DataRow? getRow(int index) {
    if (index >= data.length) return null;
    final test = data[index];
    return DataRow.byIndex(index: index, cells: [
      DataCell(SizedBox(
          width: 250,
          child: Text(
            test.testData?.title ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ))),
      DataCell(
          Text(CommonAssets.formatTimestampJson(test.startTime)['date'] ?? "")),
      // DataCell(_buildBadge(
      //   test.mode.name.capitalize,

      //   test.mode.name == 'Exam' ? Colors.green[100]! : Colors.blue[100]!,
      //   test.mode.name == 'Exam' ? Colors.green[800]! : Colors.blue[800]!,
      // )),
      DataCell(Text(
        test.status == "in-progress"
            ? "In-progress"
            : test.score == null
                ? "N/A"
                : "${test.score}%",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: getScoreColor(test.score),
        ),
      )),
      DataCell(Text('${test.testData?.duration ?? 0} min')),
      DataCell(BadgeWidget(
        text: test.status.capitalize ?? "",
      )),
      DataCell(BlocConsumer<StarStopSumbitTestBloc, StarStopSumbitTestState>(
        listener: (context, state) {
          if (state.state.isError) {
            showCommonToast(
                context: context,
                message: state.message,
                notificationType: ToastificationType.error);
          } else if (state.state.isLoaded) {
            GoRouter.of(context)
                .goNamed(AppRoutes.PRACTICE_ROUTE_NAME, pathParameters: {
              "attempt_id": state.attemptId ?? "",
              "test_id": state.testId ?? "",
              "from": AppRoutes.TEST_HISTORY_ROUTE_NAME,
            });
          }
        },
        builder: (context, state) {
          return InkWell(
            onTap: () {
              if (test.status == "in-progress") {
                context.read<StarStopSumbitTestBloc>().add(
                      StarStopSumbitTestEvent.startTest(testId: test.testId),
                    );
              } else {
                GoRouter.of(context).goNamed(
                    AppRoutes.TEST_HISTORY_DETAILS_ROUTE_NAME,
                    pathParameters: {
                      "attempt_id": test.attemptId,
                    });
              }
            },
            child: Text(
              (state.state.isLoading && state.testId == test.testId)
                  ? "Loading..."
                  : test.status == "in-progress"
                      ? "Resume Test"
                      : "View Details",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: test.status == "in-progress"
                      ? Colors.red
                      : Colors.black87),
            ),
          );
        },
      )),
    ]);
  }

  Color getScoreColor(int? value) {
    if (value == null) {
      return Colors.black54;
    } else if (value >= 85) {
      return Colors.green;
    } else if (value >= 70) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
