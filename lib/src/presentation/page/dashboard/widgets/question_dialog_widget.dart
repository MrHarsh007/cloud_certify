import '../../../all_export.dart';

class QuestionDialog extends StatelessWidget {
  const QuestionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RADIUS),
      ),
      insetPadding: EdgeInsets.zero,
      child: Container(
        constraints: BoxConstraints(
            maxWidth: 600, maxHeight: MediaQuery.sizeOf(context).height),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(RADIUS),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<StreakBloc, StreakState>(
              buildWhen: (previous, current) =>
                  previous.dailyStreak != current.dailyStreak ||
                  previous.todayQuestion?.question.date !=
                      current.todayQuestion?.question.date,
              builder: (context, streakState) {
                return _buildHeader(context, streakState);
              },
            ),
            BlocBuilder<StreakBloc, StreakState>(
              buildWhen: (previous, current) =>
                  previous.todayQuestion != current.todayQuestion ||
                  previous.selectedAnswer != current.selectedAnswer ||
                  previous.isCorrect != current.isCorrect,
              builder: (context, streakState) {
                return _buildQuestionContent(context, streakState);
              },
            ),
            BlocBuilder<StreakBloc, StreakState>(
              buildWhen: (previous, current) =>
                  previous.isCorrect != current.isCorrect,
              builder: (context, streakState) {
                if (streakState.isCorrect != null) {
                  return _buildResultSection(
                      context, streakState, streakState.isCorrect!);
                }
                return SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, StreakState streakState) {
    return Container(
      padding: EdgeInsets.all(BOX_PADDING * 1.5),
      decoration: BoxDecoration(
        color: AppColor.primaryQuizeColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(RADIUS),
          topRight: Radius.circular(RADIUS),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Question of the Day",
                  style: context.textTheme.headlineSmall?.copyWith(
                      color: AppColor.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600)),
              IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: 22,
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close, size: 22, color: Colors.white)),
            ],
          ),
          10.hx,
          Row(
            children: [
              Chip(
                backgroundColor: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: EdgeInsets.all(2),
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    HugeIcon(
                        icon: HugeIcons.strokeRoundedFire02,
                        color: AppColor.streakIconColor,
                        size: 16),
                    5.wx,
                    Text(
                      "Streak Day: ${streakState.streakCount}",
                      style: context.textTheme.bodySmall?.copyWith(
                          color: AppColor.streakIconColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              10.wx,
              Row(
                children: [
                  HugeIcon(
                    icon: Icons.watch_later_outlined,
                    color: Colors.white,
                    size: 16,
                  ),
                  5.wx,
                  Text(
                    CommonAssets.formatTimestampJson(
                            streakState.todayQuestion?.question.date ??
                                0)['date']
                        .toString(),
                    style: context.textTheme.bodySmall?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionContent(BuildContext context, StreakState streakState) {
    return Container(
      padding: EdgeInsets.only(
          right: BOX_PADDING * 1.5, left: BOX_PADDING * 1.5, top: BOX_PADDING),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            streakState.todayQuestion?.question.question.toString() ?? "",
            style: context.textTheme.titleLarge?.copyWith(
                fontSize: 18,
                color: AppColor.black,
                fontWeight: FontWeight.w500),
          ),
          15.hx,
          ...List.generate(
            streakState.todayQuestion?.question.options.length ?? 0,
            (index) => Container(
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SMALL_RADIUS),
                border: Border.all(color: Colors.grey.shade300, width: 1),
              ),
              child: RadioListTile(
                value: streakState.todayQuestion?.question.options[index],
                groupValue: streakState.selectedAnswer,
                activeColor: AppColor.primaryQuizeColor,
                onChanged: (value) {
                  streakState.isCorrect != null
                      ? null
                      : context
                          .read<StreakBloc>()
                          .add(StreakEvent.selectAnswer(value ?? ""));
                },
                title: Text(
                  "${streakState.todayQuestion?.question.options[index]}",
                  style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColor.black, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          if (streakState.isCorrect == null)
            Align(
              alignment: Alignment.topRight,
              child: CustomElevatedButton(
                margin: EdgeInsets.only(bottom: 20, top: 10),
                onTap: () =>
                    context.read<StreakBloc>().add(StreakEvent.sumbitAnswer()),
                label: "Submit Answer",
                backgroundColor: AppColor.primaryQuizeColor,
                radius: SMALL_RADIUS,
                width: 150,
                height: 40,
              ),
            )
        ],
      ),
    );
  }

  Widget _buildResultSection(
      BuildContext context, StreakState streakState, bool isCorrect) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(BOX_PADDING),
      decoration: BoxDecoration(
        color: isCorrect ? Colors.green : Colors.red,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(RADIUS),
          bottomRight: Radius.circular(RADIUS),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isCorrect ? "Correct!" : "Incorrect!",
            style: context.textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
          5.hx,
          Text(streakState.todayQuestion?.question.explanation ?? "",
              style:
                  context.textTheme.bodyMedium?.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
