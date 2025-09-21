import 'package:url_launcher/url_launcher.dart';
import '../../../all_export.dart';

class AnswerFeedbackSection extends StatelessWidget {
  const AnswerFeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestDetailsBloc, TestDetailsState>(
      builder: (context, testDetailsState) {
        return BlocBuilder<StarStopSumbitTestBloc, StarStopSumbitTestState>(
          builder: (context, startSubmitState) {
            final hasResponse = _hasResponse(testDetailsState);
            final isCorrect = _isCorrect(testDetailsState, hasResponse);
            final questionDetails =
                _getQuestionDetails(testDetailsState, hasResponse);
            return IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: AnimatedSize(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                      alignment: Alignment.topCenter,
                      child: hasResponse
                          ? _buildFeedbackContainer(
                              context, isCorrect, questionDetails)
                          : const SizedBox(),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  bool _hasResponse(TestDetailsState state) {
    return state.testDetails?.attemptedQuestions?.any((t) =>
            t.questionId ==
            state.testQuestion?.questions[state.currentIndex].id) ??
        false;
  }

  bool _isCorrect(TestDetailsState state, bool hasResponse) {
    return hasResponse
        ? state.testDetails?.attemptedQuestions
                ?.where((t) =>
                    t.questionId ==
                    state.testQuestion?.questions[state.currentIndex].id)
                .firstOrNull
                ?.isCorrect ??
            false
        : false;
  }

  TestQuestionWithoutAnswer? _getQuestionDetails(
      TestDetailsState state, bool hasResponse) {
    return hasResponse
        ? state.testQuestion?.questions[state.currentIndex]
        : null;
  }

  Widget _buildFeedbackContainer(BuildContext context, bool isCorrect,
      TestQuestionWithoutAnswer? questionDetails) {
    return Container(
      padding: const EdgeInsets.all(BOX_PADDING),
      decoration: CommonUtilities.commonBoxDecoration.copyWith(
        color: isCorrect
            ? Colors.green.withOpacity(0.03)
            : Colors.red.withOpacity(0.03),
        border: Border.all(
          width: 1.5,
          color: isCorrect ? Colors.green : Colors.red,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            isCorrect
                ? "Awesome! That’s the right answer!"
                : "Hmm, not this time. Let’s try the next one!",
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: isCorrect ? Colors.green : Colors.red,
            ),
          ),
          10.hx,
          Text(
            "Correct Answer: ${questionDetails?.correctOption?.split(",").toList()}",
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          10.hx,
          if (questionDetails != null) ...[
            Text("  Explanation", style: context.textTheme.titleMedium),
            Html(
              data: questionDetails.explanation.replaceAll("<br>", ""),
              onLinkTap: (url, attributes, element) => launchUrl(
                Uri.parse(url ?? ""),
                mode: LaunchMode.externalApplication,
              ),
              style: {
                "body": Style(
                  fontSize: FontSize(16),
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.start,
                ),
              },
            ),
            10.hx,
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Related Topic:",
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  10.hx,
                  if (questionDetails.topic.isNotEmpty) ...[
                    Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: questionDetails.topic
                          .split(",")
                          .toList()
                          .map((t) => Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color:
                                        AppColor.primaryColor.withOpacity(0.1)),
                                child: Text(
                                  t.capitalize ?? "",
                                  style: context.textTheme.titleSmall?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.primaryColor),
                                ),
                              ))
                          .toList(),
                    ),
                    10.hx,
                  ] else
                    Text(
                      "No related topic found",
                      style: context.textTheme.titleMedium
                          ?.copyWith(color: Colors.red),
                    ),
                ])
          ],
        ],
      ),
    );
  }
}
