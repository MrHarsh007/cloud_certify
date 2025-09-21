part of 'recent_activity_bloc.dart';

@freezed
class RecentActivityEvent with _$RecentActivityEvent {
  const factory RecentActivityEvent.fetchRecentActivity(
      {@Default(true) bool isLoading}) = _FetchRecentActivity;

  const factory RecentActivityEvent.addActivityDetail(
      {required String activity,
      Map<String, String>? metaData}) = _AddActivityDetail;
}
