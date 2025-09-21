import 'package:cloud_certify/src/presentation/page/test_history_details/widgets/question_details.dart';
import 'package:cloud_certify/src/presentation/page/test_history_details/widgets/score_indicator.dart';
import 'package:cloud_certify/src/presentation/page/test_history_details/widgets/test_history_appbar.dart';
import 'package:cloud_certify/src/presentation/page/test_history_details/widgets/test_summary_info.dart';
import 'package:wiredash/wiredash.dart';

import '../../all_export.dart';

class TestHistoryDetailsScreen extends StatefulWidget {
  final String attemptId;

  const TestHistoryDetailsScreen({super.key, required this.attemptId});

  @override
  State<TestHistoryDetailsScreen> createState() =>
      _TestHistoryDetailsScreenState();
}

class _TestHistoryDetailsScreenState extends State<TestHistoryDetailsScreen> {
  @override
  void initState() {
    final testHistoryBloc = context.read<TestHistoryDetailsBloc>();
    if (testHistoryBloc.state.testHistory == null ||
        testHistoryBloc.state.testHistory?.id != widget.attemptId) {
      testHistoryBloc.add(TestHistoryDetailsEvent.getTestHistoryDetails(
          attemptId: widget.attemptId));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: wiredashFloatingActionButton(context),
      body: BlocBuilder<TestHistoryDetailsBloc, TestHistoryDetailsState>(
        buildWhen: (previous, current) =>
            previous.testHistory != current.testHistory,
        builder: (context, state) {
          return Column(
            children: [
              TestHistoryAppBar(testAttemptHistory: state.testHistory),
              BlocBuilder<TestHistoryDetailsBloc, TestHistoryDetailsState>(
                builder: (context, state) {
                  final testHistory = state.testHistory;

                  if (state.state.isLoading) {
                    return SizedBox(
                        height: 100,
                        child: const Center(child: CommonLoader()));
                  }

                  if (testHistory == null) {
                    return const Center(
                      child: SizedBox(
                        width: 500,
                        child: NoSearchResultFound(
                          title: "No Test History Found",
                          description:
                              "We couldn't find any details for this test attempt.",
                          icon: Icons.cancel_outlined,
                        ),
                      ),
                    );
                  }
                  return Flexible(
                    child: ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(16),
                      children: [
                        Container(
                          padding: const EdgeInsets.all(BOX_PADDING),
                          decoration: CommonUtilities.commonBoxDecoration,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Flexible(
                                child:
                                    TestSummaryInfo(testHistory: testHistory),
                              ),
                              30.wx,
                              ScoreIndicator(
                                scorePercent: (testHistory.score == null ||
                                        testHistory.score == 0)
                                    ? 0
                                    : ((testHistory.score ?? 0) / 100)
                                        .toDouble(),
                              )
                            ],
                          ),
                        ),
                        20.hx,
                        QuestionDetails(),
                      ],
                    ),
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}

FloatingActionButton wiredashFloatingActionButton(BuildContext context) {
  final auth = FirebaseAuth.instance.currentUser;

  return FloatingActionButton(
    backgroundColor: AppColor.primaryColor,
    child: const Icon(
      Icons.feedback,
      // size: 24,
      color: Colors.white,
    ),
    onPressed: () {
      Wiredash.of(context).show(
          inheritCupertinoTheme: true,
          options: WiredashFeedbackOptions(
              labels: [
                Label(id: "label-g47rnwass6", title: "Praise"),
                Label(id: "label-dor9l3y8qh", title: "Bug"),
                Label(id: "label-0cdl0mr1gx", title: "Improvement"),
              ],
              email: EmailPrompt.mandatory,
              collectMetaData: (metaData) => metaData
                ..userEmail = auth?.email ?? ""
                ..userId = auth?.uid ?? ""));
    },
  );
}
