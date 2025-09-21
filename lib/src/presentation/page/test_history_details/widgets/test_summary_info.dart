import '../../../all_export.dart';

class TestSummaryInfo extends StatelessWidget {
  final TestAttemptHistory? testHistory;

  const TestSummaryInfo({super.key, this.testHistory});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 15,
          runSpacing: 15,
          children: [
            Text(
              testHistory?.testTitle ?? "",
              style: context.textTheme.headlineSmall?.copyWith(
                height: 2,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: CommonUtilities.generateStatusColor(
                        testHistory?.status.capitalize ?? "")['bg']!
                    .withOpacity(0.5),
              ),
              child: Text(
                testHistory?.status.capitalize ?? "",
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: CommonUtilities.generateStatusColor(
                      testHistory?.status.capitalize ?? "")['text'],
                ),
              ),
            ),
          ],
        ),
        10.hx,
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 15,
            spacing: 15,
            children: [
              _buildLabelValue(
                  context,
                  "Date Completed:",
                  CommonAssets.formatTimestampJson(
                          testHistory?.endTime ?? 0)["date"] ??
                      ""),
              _buildLabelValue(
                  context,
                  "Time Taken:",
                  CommonUtilities.formatTimeInHrMin(
                      testHistory?.totalTimeTaken ?? 0)),
              _buildLabelValue(context, "Total Questions:",
                  "${testHistory?.totalQuestions} Questions"),
              _buildLabelValue(context, "Passing Score:", "70%"),
            ],
          ),
        ),
        15.hx,
        ScoreBreakdownWidget(testHistory: testHistory),
      ],
    );
  }

  Widget _buildLabelValue(BuildContext context, String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: context.textTheme.titleMedium
                ?.copyWith(fontSize: 14, fontWeight: FontWeight.w600)),
        Text(value,
            style: context.textTheme.bodyMedium
                ?.copyWith(fontWeight: FontWeight.w400)),
      ],
    );
  }
}
