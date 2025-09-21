part of 'test_history_details_bloc.dart';

@freezed
class TestHistoryDetailsState with _$TestHistoryDetailsState {
  factory TestHistoryDetailsState({
    required RequestState state,
    required String message,
    required String? topic,
    required String? searchQuery,
    required int totalCount,
    required int selectedIndex,
    required TestAttemptHistory? testHistory,
    required List<TotalQuestionDetail>? questionDetails,
    required List<TotalQuestionDetail>? filteredQuestionDetails,
  }) = _TestHistoryDetailsState;
  factory TestHistoryDetailsState.initial() => TestHistoryDetailsState(
      state: RequestState.empty,
      message: '',
      totalCount: 10,
      selectedIndex: 0,
      testHistory: null,
      questionDetails: null,
      searchQuery: null,
      topic: null,
      filteredQuestionDetails: null);
}
