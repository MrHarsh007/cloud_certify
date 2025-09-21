part of 'test_history_bloc.dart';

@freezed
class TestHistoryEvent with _$TestHistoryEvent {
  // Initial Event
  const factory TestHistoryEvent.initial() = _Initial;

  // Event to fetch test history
  const factory TestHistoryEvent.getTestHistory({
    String? searchQuery,
    @Default(false) bool fetchMore,
  }) = _GetTestHistory;

  // Change search query event
  const factory TestHistoryEvent.changeSearchQuery({String? query}) =
      _ChangeSearchQuery;

  // change search test history
  const factory TestHistoryEvent.resetSearchTestHistory() =
      _ResetSearchTestHistory;

  // change row per page
  const factory TestHistoryEvent.changeRowPerPage({required int rowPerPage}) =
      _ChangeRowPerPage;

  // Fetch User statics
  const factory TestHistoryEvent.getUserStatistics() = _GetUserStatistics;

  // Pagenumber changed
  const factory TestHistoryEvent.changePageNumber({int? pageNumber}) =
      _ChangePageNumber;
}
