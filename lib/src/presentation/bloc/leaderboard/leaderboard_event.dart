part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardEvent with _$LeaderboardEvent {
  //initial
  const factory LeaderboardEvent.initial() = _Initial;

  // fetch leaderboard
  const factory LeaderboardEvent.fetchLeaderboard() = _FetchLeaderboard;
}
