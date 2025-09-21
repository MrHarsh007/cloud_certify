part of 'test_history_details_bloc.dart';

@freezed
class TestHistoryDetailsEvent with _$TestHistoryDetailsEvent {
  // Initial event
  const factory TestHistoryDetailsEvent.initial() = _Initial;

  // Event to get test history details
  const factory TestHistoryDetailsEvent.getTestHistoryDetails({
    required String attemptId,
  }) = _GetTestHistoryDetails;

  // Event to search for a specific question
  const factory TestHistoryDetailsEvent.searchQuestion({
    required String? searchQuery,
  }) = _SearchQuestion;

  // Change Question details
  const factory TestHistoryDetailsEvent.changeQuestionDetails({
    required int selectedIndex,
  }) = _ChangeQuestionDetails;

  // Load more questions
  const factory TestHistoryDetailsEvent.loadMoreQuestions() =
      _LoadMoreQuestions;
}
