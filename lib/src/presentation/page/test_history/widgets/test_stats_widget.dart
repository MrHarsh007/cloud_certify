import '../../../all_export.dart';

class TestSummaryStats extends StatelessWidget {
  final int? totalTestsAttempted;
  final int? totalPracticeTests;
  final int? totalRealTests;
  final double? avgScore;
  final double? bestScore;
  final int? totalTimeSpent;
  final double? avgTimePerTest;
  final int? totalQuestionsAttempted;
  final int? totalCorrectAnswers;
  final double? accuracyRate;

  const TestSummaryStats({
    super.key,
    this.totalTestsAttempted,
    this.totalPracticeTests,
    this.totalRealTests,
    this.avgScore,
    this.bestScore,
    this.totalTimeSpent,
    this.avgTimePerTest,
    this.totalQuestionsAttempted,
    this.totalCorrectAnswers,
    this.accuracyRate,
  });

  @override
  Widget build(BuildContext context) {
    final icons = Assets.testStats;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: CommonUtilities.commonBoxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Test Performance Summary",
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 20),
          // isMobile
          //     ?
          SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 40,
              runSpacing: 40,
              children: _buildListItem(icons),
            ),
          )
          // : Row(
          //     spacing: 40,
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: _buildListItem(icons),
          //   )
        ],
      ),
    );
  }

  List<Widget> _buildListItem($AssetsTestStatsGen icons) {
    return [
      // Box 1 - Total Tests
      if (totalTestsAttempted != null)
        _SummaryCard(
          title: "Total Tests",
          value: "$totalTestsAttempted",
          subtitle:
              "Practice: ${totalPracticeTests ?? 0} | Exams: ${totalRealTests ?? 0}",
          icon: icons.totalExam,
          iconColor: Colors.blue,
          isIconColored: false,
        ),

      // Box 2 - Average Score
      if (avgScore != null)
        _SummaryCard(
          title: "Average Score",
          value: avgScore!.toStringAsFixed(2),
          subtitle: "Best: ${bestScore?.toStringAsFixed(2) ?? '-'}",
          icon: icons.avgScore,
          iconColor: Colors.green,
        ),

      // Box 3 - Total Time
      if (totalTimeSpent != null)
        _SummaryCard(
          title: "Total Time",
          value: CommonUtilities.formatTimeInHrMin(totalTimeSpent!),
          subtitle:
              "Avg per test: ${CommonUtilities.formatMinutesInMinSec(avgTimePerTest ?? 0)}",
          icon: icons.totalTimeSpend,
          iconColor: Colors.purple,
          isIconColored: false,
        ),

      // Box 4 - Accuracy
      if (accuracyRate != null)
        _SummaryCard(
          title: "Accuracy",
          value: "${accuracyRate!.toStringAsFixed(2)}%",
          subtitle:
              "Questions: ${totalQuestionsAttempted ?? 0} | Correct: ${totalCorrectAnswers ?? 0}",
          icon: icons.accuracyRate,
          iconColor: Colors.orange,
        ),
    ];
  }
}

class _SummaryCard extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;
  final String icon;
  final Color iconColor;
  final bool isIconColored;

  const _SummaryCard({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
    this.isIconColored = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconColor.withOpacity(0.1),
            ),
            child: SvgPicture.asset(
              icon,
              width: 30,
              height: 30,
              colorFilter: isIconColored
                  ? ColorFilter.mode(iconColor, BlendMode.srcIn)
                  : null,
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: iconColor,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
