part of 'recent_activity_bloc.dart';

@freezed
class RecentActivityState with _$RecentActivityState {
  factory RecentActivityState({
    required RequestState state,
    required String message,
    required ActivityList? activities,
  }) = _RecentActivityState;
  factory RecentActivityState.initial() => RecentActivityState(
        state: RequestState.empty,
        message: '',
        activities: null,
      );
}
