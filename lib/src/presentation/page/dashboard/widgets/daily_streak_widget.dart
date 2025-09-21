import '../../../all_export.dart';

class DailyStreakWidget extends StatelessWidget {
  const DailyStreakWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: CommonUtilities.commonBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(BOX_PADDING),
              decoration: CommonUtilities.commonBoxDecoration.copyWith(
                  color: AppColor.primarySecondaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(SMALL_RADIUS),
                      topRight: Radius.circular(SMALL_RADIUS))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daily Streak Challenge",
                    style: context.textTheme.titleLarge
                        ?.copyWith(fontSize: 22, color: Colors.white),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: SPACE8, horizontal: SPACE8 * 2),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(SMALL_RADIUS)),
                    child: BlocBuilder<StreakBloc, StreakState>(
                      buildWhen: (previous, current) =>
                          previous.streakCount != current.streakCount,
                      builder: (context, state) {
                        return Text("Day ${state.streakCount}",
                            style: context.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColor.primarySecondaryColor));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(BOX_PADDING),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColor.primarySecondaryColor,
                          radius: 20,
                          child: Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        10.wx,
                        Text("Maintain Your Learning Streak",
                            style: context.textTheme.bodyLarge),
                      ],
                    ),
                    10.hx,
                    Text(
                      "Consistency is key to mastering GCP. Complete the daily question to build and maintain your streak.",
                      style: context.textTheme.bodyMedium,
                    ),
                    15.hx,
                    Container(
                      padding: EdgeInsets.all(BOX_PADDING),
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(SMALL_RADIUS)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Question of the Day",
                                    style: context.textTheme.titleMedium
                                        ?.copyWith(color: Colors.black)),
                                BlocBuilder<StreakBloc, StreakState>(
                                  builder: (context, state) {
                                    if (state.state.isLoading) {
                                      return Text(
                                        "Loading today's question...",
                                        style: context.textTheme.bodySmall,
                                      );
                                    } else if (state.isCorrect == null) {
                                      return Text(
                                        "Answer a question to maintain your streak. You can answer the question at any time.",
                                        style: context.textTheme.bodyMedium,
                                      );
                                    } else if (state.isCorrect == true) {
                                      return Text(
                                        "You answered the question correctly. You have maintained your streak.",
                                        style: context.textTheme.bodyMedium
                                            ?.copyWith(
                                                color: Colors.green,
                                                fontWeight: FontWeight.w500),
                                      );
                                    } else {
                                      return Text(
                                        "You got this one wrong, but don't worry, your streak is still going strong! Keep pushing forward.",
                                        style: context.textTheme.bodyMedium
                                            ?.copyWith(
                                                color: Colors.red,
                                                fontWeight: FontWeight.w500),
                                      );
                                    }
                                  },
                                )
                              ],
                            ),
                          ),
                          15.wx,
                          BlocConsumer<StreakBloc, StreakState>(
                            listenWhen: (previous, current) =>
                                previous.state != current.state ||
                                previous.message != current.message ||
                                previous.todayQuestion != current.todayQuestion,
                            buildWhen: (previous, current) =>
                                previous.state != current.state,
                            listener: (context, state) {
                              if (state.state.isError) {
                                showCommonToast(
                                  context: context,
                                  message: state.message,
                                  notificationType: ToastificationType.error,
                                );
                              }
                            },
                            builder: (context, state) {
                              return CustomElevatedButton(
                                width: 120,
                                isLoading: state.state.isLoading,
                                height: 40,
                                backgroundColor: AppColor.primarySecondaryColor,
                                radius: RADIUS / 2,
                                onTap: () async {
                                  if (state.todayQuestion == null) {
                                    context
                                        .read<StreakBloc>()
                                        .add(StreakEvent.getTodayQuestion());
                                    _showQuestionDialog(context);
                                  } else {
                                    _showQuestionDialog(context);
                                  }
                                },
                                label: "Take Quiz",
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    15.hx,
                    Text(
                      "Pro tip: These MCQs are basic and will improve your chances of passing the exam while helping you learn cloud concepts effectively.",
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ))
          ],
        ));
  }

  void _showQuestionDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return const QuestionDialog();
      },
    );
  }
}
