import '../../../all_export.dart';

class TestHistoryAppBar extends StatelessWidget {
  final TestAttemptHistory? testAttemptHistory;

  const TestHistoryAppBar({super.key, this.testAttemptHistory});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border(bottom: BorderSide(color: Colors.grey.shade300, width: 1.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () => GoRouter.of(context).pop(),
                  child: Icon(Icons.close, color: Colors.black)),
              20.wx,
              Text(testAttemptHistory?.testTitle ?? "",
                  style: context.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
              20.wx,
              _buildTag("Exam Results", Colors.deepPurpleAccent),
              20.wx,
              if (testAttemptHistory?.difficulty != null)
                Tooltip(
                  message: "Test Difficulty",
                  child: _buildTag(
                      testAttemptHistory?.difficulty?.capitalize ?? "",
                      AppColor.primaryColor),
                ),
            ],
          ),
          const UserProfileCircle()
        ],
      ),
    );
  }

  Widget _buildTag(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color.withOpacity(0.1),
      ),
      child: Text(label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: color,
            fontSize: 13,
          )),
    );
  }
}
