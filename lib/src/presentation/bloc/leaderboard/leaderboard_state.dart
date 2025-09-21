part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  factory LeaderboardState({
    required RequestState state,
    required String message,
    required LeaderboardResponse? leaderboardResponse,
  }) = _LeaderboardState;
  factory LeaderboardState.initial() => LeaderboardState(
        state: RequestState.empty,
        message: '',
        leaderboardResponse: null,
      );
}
