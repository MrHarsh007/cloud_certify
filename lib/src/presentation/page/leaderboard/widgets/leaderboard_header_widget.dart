import '../../../all_export.dart';

class LeaderboardHeaderWidget extends StatelessWidget {
  const LeaderboardHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInDown(
            duration: const Duration(milliseconds: 400),
            child: _buildGlobalLeaderboardHeader(context)),
        20.hx,
        FadeInRight(
            duration: const Duration(milliseconds: 400),
            delay: const Duration(milliseconds: 400),
            child: _buildUserRankingCard(context)),
      ],
    );
  }

  // Builds the global leaderboard header section
  Widget _buildGlobalLeaderboardHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: CommonUtilities.commonBoxDecoration,
      padding: EdgeInsets.all(BOX_PADDING),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Global Leaderboard",
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Text(
            "View the top-performing users from around the world based on certification performance. "
            "This leaderboard reflects consistent effort, high scores, and a strong commitment to learning. "
            "Stay motivated, track your standing, and strive to move up the ranks.",
            style: context.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  // Builds the user ranking card
  Widget _buildUserRankingCard(BuildContext context) {
    return Container(
      decoration: CommonUtilities.commonBoxDecoration.copyWith(
        border: Border.all(color: AppColor.primaryColor, width: 2),
        color: AppColor.primarySecondaryColor.withOpacity(0.05),
      ),
      padding: EdgeInsets.all(BOX_PADDING - 4),
      child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
        buildWhen: (previous, current) =>
            previous.leaderboardResponse != current.leaderboardResponse ||
            previous.state != current.state,
        builder: (context, state) {
          final isLoading = state.state.isLoading;
          return Row(
            children: [
              _buildRankingCircle(
                  context,
                  isLoading
                      ? ""
                      : state.leaderboardResponse?.userRanking.rank
                              .toString() ??
                          "0"),
              10.wx,
              Expanded(
                  child: _buildRankingDetails(
                      context,
                      state.state.isLoading
                          ? "Loading..."
                          : getRankingMessage(state
                                  .leaderboardResponse?.userRanking.percentile
                                  .toDouble() ??
                              0))),
              _buildStatColumn(
                  context,
                  isLoading
                      ? "..."
                      : state.leaderboardResponse?.userRanking.avgScore
                              .toString() ??
                          "0",
                  "Avg. Score"),
              20.wx,
              _buildStatColumn(
                  context,
                  isLoading
                      ? "..."
                      : state.leaderboardResponse?.userRanking.testsTaken
                              .toString() ??
                          "0",
                  "Test Taken"),
            ],
          );
        },
      ),
    );
  }

  // Builds the ranking circle
  Widget _buildRankingCircle(BuildContext context, String rank) {
    return Container(
      padding: EdgeInsets.all(BOX_PADDING - 2),
      decoration: BoxDecoration(
        color: AppColor.primarySecondaryColor,
        shape: BoxShape.circle,
      ),
      child: TweenAnimationBuilder<int>(
        tween: IntTween(begin: 0, end: int.tryParse(rank) ?? 0),
        duration: Duration(milliseconds: 1500),
        builder: (context, value, child) {
          return Text(
            "$value",
            style: context.textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontSize: 22,
            ),
          );
        },
      ),
    );
  }

  // Builds the ranking details section
  Widget _buildRankingDetails(BuildContext context, String msg) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Ranking",
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          msg,
          style: context.textTheme.bodyMedium,
        ),
      ],
    );
  }

  // Builds a column for statistics (e.g., Avg. Score, Test Taken)
  Widget _buildStatColumn(BuildContext context, String value, String label) {
    return Column(
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0.0, end: double.tryParse(value) ?? 0.0),
          duration: const Duration(milliseconds: 500),
          builder: (context, animatedValue, child) {
            double endValue = double.tryParse(value) ?? 0.0;

            // While animating, show as int
            // When finished, show as double
            bool isCompleted = animatedValue == endValue;

            return Text(
              isCompleted
                  ? endValue.toString() // After animation → show double
                  : animatedValue
                      .toInt()
                      .toString(), // During animation → show int
              style: context.textTheme.headlineSmall?.copyWith(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
        Text(
          label,
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  String getRankingMessage(double percentile) {
    // Generate message based on the percentile value
    if (percentile == 100.0) {
      return "You're ranked #1 — leading the leaderboard with a perfect score. Incredible work!";
    } else if (percentile >= 90.0) {
      return "You're ranked in the top 10%! Keep up the great performance!";
    } else if (percentile >= 75.0) {
      return "You're ranked in the top 25%. Well done, but there's still room to improve!";
    } else if (percentile >= 50.0) {
      return "You're ranked in the top 50%. Keep working hard to climb higher!";
    } else {
      return "You're ranked outside the top 50%. Stay focused and keep improving!";
    }
  }
}
