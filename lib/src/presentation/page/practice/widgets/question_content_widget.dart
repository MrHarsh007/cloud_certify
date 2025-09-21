import '../../../all_export.dart';

class QuestionContent extends StatelessWidget {
  final String attemptId;
  final String testId;

  const QuestionContent(
      {super.key, required this.attemptId, required this.testId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestDetailsBloc, TestDetailsState>(
      builder: (context, state) {
        if (state.state.isLoading) {
          return const Center(child: CommonLoader());
        }

        return BlocConsumer<StarStopSumbitTestBloc, StarStopSumbitTestState>(
          listener: (context, state) {
            if (state.state.isError) {
              showCommonToast(
                context: context,
                message: state.message,
                notificationType: ToastificationType.error,
              );
            }
          },
          builder: (context, startStopSumbitTestState) {
            debugPrint("isSelected2: ${state.selectedAnswer}");
            return ListView(
              padding: const EdgeInsets.only(right: 48, left: 48, top: 32),
              children: [
                QueWidget(
                  isLoading: startStopSumbitTestState.state.isLoading,
                  assessmentType: state.testQuestion
                          ?.questions[state.currentIndex].assessmentType ??
                      AssessmentType.multipleChoice,
                  queNumber: state.currentIndex + 1,
                  question: state.testQuestion?.questions[state.currentIndex]
                          .question ??
                      "",
                  options: state
                          .testQuestion?.questions[state.currentIndex].options
                          .toMap() ??
                      {},
                  selectedAnswer: !_isAnswered(state)
                      ? state.selectedAnswer
                      : _getSelectedAnswer(state),
                  onAnswerSelect: (p0) {
                    if (startStopSumbitTestState.isTestRunning) {
                      context
                          .read<TestDetailsBloc>()
                          .add(TestDetailsEvent.addSelectedAnswer(answer: p0));
                    } else {
                      showCommonToast(
                        context: context,
                        message: "Please start the test first",
                        notificationType: ToastificationType.warning,
                      );
                    }
                  },
                  correctAnswer: state.testQuestion
                          ?.questions[state.currentIndex].correctOption
                          ?.split(",") ??
                      [],
                  isMultipleAnswer: state.testQuestion
                          ?.questions[state.currentIndex].assessmentType ==
                      AssessmentType.multiSelect,
                  isAnswered: _isAnswered(state),
                ),
                20.hx,
                AnswerFeedbackSection(),
                20.hx,
              ],
            );
          },
        );
      },
    );
  }

  List<String> _getSelectedAnswer(TestDetailsState state) {
    return state.testDetails?.attemptedQuestions
            ?.where((t) =>
                t.questionId ==
                state.testQuestion?.questions[state.currentIndex].id)
            .firstOrNull
            ?.selectedOption
            .toList() ??
        [];
  }

  bool _isAnswered(TestDetailsState state) {
    return state.testDetails?.attemptedQuestions?.any((t) =>
            t.questionId ==
            state.testQuestion?.questions[state.currentIndex].id) ??
        false;
  }
}
