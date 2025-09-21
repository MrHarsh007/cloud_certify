import '../../../all_export.dart';

class QuestionSidebar extends StatelessWidget {
  final String attemptId;

  const QuestionSidebar({super.key, required this.attemptId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestDetailsBloc, TestDetailsState>(
      buildWhen: (previous, current) =>
          previous.currentIndex != current.currentIndex ||
          previous.testQuestion != current.testQuestion ||
          previous.state != current.state,
      builder: (context, testDetailsState) {
        return AnimatedSize(
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeIn,
          alignment: Alignment.topCenter,
          child: Container(
            constraints: BoxConstraints(maxHeight: 600),
            padding: EdgeInsets.all(BOX_PADDING),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                right: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1.5,
                ),
              ),
            ),

            // decoration: CommonUtilities.commonBoxDecoration.copyWith(
            //     border: Border.all(color: Colors.grey.shade400, width: 1.5)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLegend(context),
                  15.hx,
                  _buildQuestionHeader(context, testDetailsState),
                  20.hx,
                  testDetailsState.state.isLoading
                      ? SizedBox()
                      : _buildQuestionNavigation(context, testDetailsState),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLegend(BuildContext context) {
    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: [
        _buildLegendItem(context, AppColor.primaryColor, "Current",
            isFilled: true),
        _buildLegendItem(context, Colors.green, "Correct"),
        _buildLegendItem(context, Colors.red, "Incorrect"),
        _buildLegendItem(context, Colors.grey, "Not Attempted"),
      ],
    );
  }

  Widget _buildLegendItem(BuildContext context, Color color, String label,
      {bool isFilled = false}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: isFilled ? color : color.withOpacity(0.03),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: color, width: 1.5),
          ),
        ),
        5.wx,
        Text(label, style: context.textTheme.titleSmall),
      ],
    );
  }

  Widget _buildQuestionHeader(BuildContext context, TestDetailsState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Questions:",
            style: context.textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.w600, fontSize: 16)),
        Text(
          "${state.currentIndex + 1} of ${state.totalQuestions}",
          style: context.textTheme.titleMedium
              ?.copyWith(color: AppColor.primaryColor),
        ),
      ],
    );
  }

  Widget _buildQuestionNavigation(
      BuildContext context, TestDetailsState state) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: List.generate(
        state.totalQuestions ?? 0,
        (index) {
          final isAttempted = state.testDetails?.attemptedQuestions?.any((t) =>
                  t.questionId == state.testQuestion?.questions[index].id) ??
              false;
          final isCorrect = state.testDetails?.attemptedQuestions
              ?.where((t) =>
                  t.questionId == state.testQuestion?.questions[index].id)
              .firstOrNull
              ?.isCorrect;

          return BlocBuilder<StarStopSumbitTestBloc, StarStopSumbitTestState>(
            buildWhen: (previous, current) =>
                previous.isTestRunning != current.isTestRunning,
            builder: (context, startStopState) {
              return InkWell(
                onTap: () {
                  if (startStopState.isTestRunning) {
                    context.read<TestDetailsBloc>().add(
                          TestDetailsEvent.updateCurrentIndex(index),
                        );
                    if (isAttempted == false) {
                      context
                          .read<StarStopSumbitTestBloc>()
                          .add(StarStopSumbitTestEvent.resetTimer());
                    }
                  } else {
                    showCommonToast(
                      context: context,
                      message: "Please start the test first",
                      notificationType: ToastificationType.warning,
                    );
                  }
                },
                child: Container(
                  height: 35,
                  width: 35,
                  alignment: Alignment.center,
                  decoration: CommonUtilities.commonBoxDecoration.copyWith(
                    border: Border.all(
                      color: state.currentIndex == index
                          ? AppColor.primaryColor
                          : (isAttempted && isCorrect == true)
                              ? Colors.green
                              : isCorrect == false
                                  ? Colors.red
                                  : Colors.grey,
                      width: 1.5,
                    ),
                    color: state.currentIndex == index
                        ? AppColor.primaryColor
                        : (isAttempted && isCorrect == true)
                            ? Colors.green
                            : isCorrect == false
                                ? Colors.red
                                : Colors.white,
                  ),
                  child: Text(
                    (index + 1).toString(),
                    style: context.textTheme.titleMedium?.copyWith(
                      fontSize: 14,
                      color: (isAttempted || state.currentIndex == index)
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
