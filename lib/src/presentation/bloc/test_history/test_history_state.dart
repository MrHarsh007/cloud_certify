part of 'test_history_bloc.dart';

@freezed
class TestHistoryState with _$TestHistoryState {
  factory TestHistoryState({
    required RequestState state,
    required String message,
    required TestStatusEnum? status,
    required String? searchQuery,
    required int rowPerPages,
    required List<TestAttemptSummary> testHistory,
    required List<TestAttemptSummary> searchTestHistory,
    required UserStatistics? userStatistics,
    required int pageNumber,
    required String? lastDocId,
  }) = _TestHistoryState;
  factory TestHistoryState.initial() => TestHistoryState(
        state: RequestState.empty,
        message: '',
        rowPerPages: 5,
        searchQuery: null,
        status: null,
        userStatistics: null,
        testHistory: [],
        searchTestHistory: [],
        pageNumber: 1,
        lastDocId: null,
      );
}
