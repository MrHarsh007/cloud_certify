import 'package:cloud_certify/src/presentation/page/test_history_details/test_history_details_screen.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../../all_export.dart';

class PracticeScreen extends StatefulWidget {
  final String attemptId;
  final String testId;
  final String routeName;

  const PracticeScreen({
    super.key,
    required this.attemptId,
    required this.testId,
    this.routeName = AppRoutes.DASHBOARD_ROUTE_NAME,
  });

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    final testDetailsState = context.read<TestDetailsBloc>().state;
    // context.read<TestDetailsBloc>().add(TestDetailsEvent.initial());

    if (testDetailsState.testDetails?.testId != widget.testId) {
      context.read<TestDetailsBloc>().add(
            TestDetailsEvent.getTestDetails(attemptId: widget.attemptId),
          );
    }

    if (testDetailsState.testQuestion?.test.id != widget.testId) {
      context
          .read<TestDetailsBloc>()
          .add(TestDetailsEvent.getTestQuestion(testId: widget.testId));
    }
    context
        .read<StarStopSumbitTestBloc>()
        .add(StarStopSumbitTestEvent.setAttemptId(attemptId: widget.attemptId));

    context.read<TestDetailsBloc>().add(TestDetailsEvent.updateCurrentIndex(0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: wiredashFloatingActionButton(context),
      backgroundColor: Colors.grey.shade100,
      // appBar: _buildAppBar(context),
      body: Column(
        children: [
          _buildAppBar(context),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 1,
                    child: QuestionSidebar(attemptId: widget.attemptId)),
                15.wx,
                Flexible(
                    flex: 3,
                    child: QuestionContent(
                        attemptId: widget.attemptId, testId: widget.testId)),
              ],
            ),
          ),
          BlocBuilder<TestDetailsBloc, TestDetailsState>(
            builder: (context, state) {
              return Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1.5,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 3,
                        child: Container(
                          padding: const EdgeInsets.only(right: 48, left: 48),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: state.currentIndex <= 0
                                    ? null
                                    : () => _onPreviousTap(context, state),
                                icon: const Icon(Icons.arrow_back),
                              ),
                              InkWell(
                                onTap: () {
                                  _showExamInstructions(context);
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.info_outline_rounded),
                                    5.wx,
                                    Text("Exam Instructions",
                                        style: context.textTheme.titleMedium
                                            ?.copyWith(
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ],
                                ),
                              ),
                              if (state.testDetails?.totalQuestions ==
                                  (state
                                      .testDetails?.attemptedQuestions?.length))
                                FinishTestButton(text: "Complete Test")
                              else if (!_isAnswered(state))
                                BlocBuilder<StarStopSumbitTestBloc,
                                    StarStopSumbitTestState>(
                                  buildWhen: (previous, current) =>
                                      previous.state != current.state,
                                  builder: (context, startSubmitState) {
                                    return CustomElevatedButton(
                                      isLoading:
                                          startSubmitState.state.isLoading,
                                      width: 150,
                                      height: 40,
                                      onTap: () => _onCheckAnswerTap(
                                          context,
                                          state,
                                          state.selectedAnswer,
                                          widget.attemptId),
                                      radius: SMALL_RADIUS,
                                      label: "Check Answer",
                                    );
                                  },
                                )
                              else
                                CustomElevatedButton(
                                  width: 150,
                                  height: 40,
                                  onTap: () {
                                    _onNextTap(context);
                                  },
                                  radius: SMALL_RADIUS,
                                  label: "Next Question",
                                ),
                            ],
                          ),
                        )),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  bool _isAnswered(TestDetailsState state) {
    return state.testDetails?.attemptedQuestions?.any((t) =>
            t.questionId ==
            state.testQuestion?.questions[state.currentIndex].id) ??
        false;
  }

  void _onCheckAnswerTap(BuildContext context, TestDetailsState state,
      List<String> selected, String attemptId) {
    if (selected.isEmpty) {
      showCommonToast(
        context: context,
        message: "Please select an answer to continue...",
        notificationType: ToastificationType.warning,
      );
    } else {
      context.read<StarStopSumbitTestBloc>().add(
            StarStopSumbitTestEvent.submitAnswer(
              attemptId: attemptId,
              questionId:
                  state.testQuestion?.questions[state.currentIndex].id ?? "",
              selectedOptions: selected,
            ),
          );
    }
  }

  void _onPreviousTap(BuildContext context, TestDetailsState state) {
    context.read<TestDetailsBloc>().add(
          TestDetailsEvent.updateCurrentIndex(state.currentIndex - 1),
        );
  }

  void _onNextTap(BuildContext context) {
    context.read<StarStopSumbitTestBloc>().add(
          StarStopSumbitTestEvent.setSubmitAnswerNull(),
        );

    context.read<TestDetailsBloc>().add(
          TestDetailsEvent.updateCurrentIndex(
              context.read<TestDetailsBloc>().state.currentIndex + 1),
        );
  }

  Widget _buildAppBar(BuildContext context) {
    return BlocBuilder<TestDetailsBloc, TestDetailsState>(
      buildWhen: (previous, current) =>
          previous.testQuestion != current.testQuestion ||
          previous.state != current.state,
      builder: (context, state) {
        return Container(
          height: 55,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.shade300,
                width: 1.5,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (state.totalQuestions !=
                          state.testDetails?.attemptedQuestions?.length) {
                        showDialog(
                          context: context,
                          builder: (context) => ReusableDialog(
                            imageUrl: "",
                            title: "Ready to Exit?",
                            moreDetails:
                                "📝 Total Questions: ${state.totalQuestions}\n"
                                "✅ Answered: ${state.testDetails?.attemptedQuestions?.length}\n"
                                "❓ Unanswered: ${(state.totalQuestions ?? 0) - (state.testDetails?.attemptedQuestions?.length ?? 0)}\n"
                                "🎯 Correct Answers: ${state.testDetails?.correctAnswers}\n"
                                "❌ Wrong Answers: ${state.testDetails?.wrongAnswers}",
                            description:
                                "You're about to leave the test environment."
                                "All your progress will be saved. Are you sure you want to exit now?",
                            onConfirm: () {
                              context
                                  .read<TestHistoryBloc>()
                                  .add(TestHistoryEvent.getTestHistory());
                              // Add Activity when user left test
                              context
                                  .read<RecentActivityBloc>()
                                  .add(RecentActivityEvent.addActivityDetail(
                                      activity:
                                          "Left test before finishing: ${state.testQuestion?.test.title}",
                                      metaData: {
                                        "attempt_id": widget.attemptId,
                                        "test_id":
                                            state.testQuestion?.test.id ?? "",
                                      }));
                              context.read<StarStopSumbitTestBloc>().add(
                                  StarStopSumbitTestEvent.resetTimer(
                                      isStopTimer: true));
                              GoRouter.of(context).goNamed(widget.routeName);
                            },
                          ),
                        );
                      } else {
                        context.read<StarStopSumbitTestBloc>().add(
                            StarStopSumbitTestEvent.resetTimer(
                                isStopTimer: true));
                        GoRouter.of(context).goNamed(widget.routeName);
                      }
                    },
                    child: const Icon(Icons.close, color: Colors.black),
                  ),
                  20.wx,
                  if (!state.state.isLoading)
                    Text(state.testQuestion?.test.title ?? "",
                        style: context.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                  20.wx,
                  if (state.testQuestion?.test.difficulty != null &&
                      !state.state.isLoading)
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColor.primaryColor.withOpacity(0.1)),
                      child: Text(
                        state.testQuestion?.test.difficulty.capitalize ?? "",
                        style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryColor),
                      ),
                    )
                ],
              ),
              BlocBuilder<StarStopSumbitTestBloc, StarStopSumbitTestState>(
                buildWhen: (previous, current) =>
                    previous.isTestRunning != current.isTestRunning ||
                    previous.seconds != current.seconds,
                builder: (context, state) {
                  if (state.isTestRunning == false) {
                    return CustomElevatedButton(
                      isLoading: state.state.isLoading,
                      backgroundColor: Colors.green,
                      width: 120,
                      height: 40,
                      onTap: () {
                        context.read<StarStopSumbitTestBloc>().add(
                              StarStopSumbitTestEvent.startTimer(),
                            );
                      },
                      radius: SMALL_RADIUS,
                      label: "Start Test",
                    );
                  } else {
                    return Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(SMALL_RADIUS),
                              border: Border.all(color: AppColor.primaryColor)),
                          child: Text("Seconds: ${state.seconds.toString()}",
                              style: context.textTheme.titleLarge?.copyWith(
                                  color: AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                        ),
                        10.wx,
                        FinishTestButton(),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showExamInstructions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SMALL_RADIUS),
              side: BorderSide(color: Colors.black45)),
          title: Text("Exam Instructions"),
          content: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.8,
            width: MediaQuery.sizeOf(context).width * 0.5,
            child: Markdown(
              selectable: true,
              shrinkWrap: true,
              data: examInstruction,
              styleSheet: markdownStyleSheet,
            ),
          ),
        );
      },
    );
  }
}

class FinishTestButton extends StatelessWidget {
  final String text;
  const FinishTestButton({
    super.key,
    this.text = "Finish Test",
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestDetailsBloc, TestDetailsState>(
      builder: (context, testDetailsState) {
        return BlocConsumer<StarStopSumbitTestBloc, StarStopSumbitTestState>(
          listener: (context, state) {
            if (state.state.isError) {
              showCommonToast(
                context: context,
                message: state.message,
                notificationType: ToastificationType.error,
              );
            }
            if (state.state.isLoaded && state.message == "Test Finished") {
              GoRouter.of(context).pop();
            }
          },
          buildWhen: (previous, current) =>
              previous.state != current.state ||
              previous.attemptId != current.attemptId,
          builder: (context, state) {
            if (testDetailsState.state.isLoading) {
              return SizedBox();
            }
            return CustomElevatedButton(
              isLoading: state.state.isLoading,
              width: 150,
              height: 40,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => ReusableDialog(
                    imageUrl: "",
                    title: "Submit Test?",
                    moreDetails:
                        "📝 Total Questions: ${testDetailsState.totalQuestions}\n"
                        "✅ Answered: ${testDetailsState.testDetails?.attemptedQuestions?.length}\n"
                        "❓ Unanswered: ${(testDetailsState.totalQuestions ?? 0) - (testDetailsState.testDetails?.attemptedQuestions?.length ?? 0)}\n"
                        "🎯 Correct Answers: ${testDetailsState.testDetails?.correctAnswers}\n"
                        "❌ Wrong Answers: ${testDetailsState.testDetails?.wrongAnswers}",
                    description:
                        "You're about to submit your test for evaluation. "
                        "Once submitted, you won't be able to make further changes. "
                        "Please review your answers before proceeding. Are you sure you want to submit now?",
                    onConfirm: () {
                      Navigator.of(context).pop();
                      context.read<StarStopSumbitTestBloc>().add(
                            StarStopSumbitTestEvent.finishTest(
                              attemptId: state.attemptId ?? "",
                            ),
                          );
                    },
                  ),
                );
              },
              backgroundColor: Colors.red,
              radius: SMALL_RADIUS,
              label: text,
            );
          },
        );
      },
    );
  }
}
