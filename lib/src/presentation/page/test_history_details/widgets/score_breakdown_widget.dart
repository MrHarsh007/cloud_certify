import '../../../all_export.dart';

class ScoreBreakdownWidget extends StatelessWidget {
  final TestAttemptHistory? testHistory;

  const ScoreBreakdownWidget({super.key, required this.testHistory});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 25,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildStatBox(
            "Correct Answers",
            "${testHistory?.correctAnswers}/${testHistory?.totalQuestions}",
            Colors.green),
        _buildStatBox(
            "Incorrect Answers",
            "${testHistory?.wrongAnswers}/${testHistory?.totalQuestions}",
            Colors.red),
        _buildStatBox("Avg Time", "${testHistory?.avgTimePerQuestion} sec",
            AppColor.primaryColor),
      ],
    );
  }

  Widget _buildStatBox(String label, String value, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: CommonUtilities.commonBoxDecoration
            .copyWith(color: color.withOpacity(0.1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
            Text(value,
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: color)),
          ],
        ),
      ),
    );
  }
}
