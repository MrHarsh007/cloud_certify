part of 'get_test_bloc.dart';

@freezed
class GetTestState with _$GetTestState {
  factory GetTestState({
    required RequestState state,
    required String message,
    required List<TestSummary> allTest,
    required List<TestSummary> searchTest,
    required String? category,
    required String? searchQuery,
    required int totalCount,
    required bool hasMoreData,
    required String? lastDocId,
    required TestSummary? featuredCourse,
    required TestSummary? mostpopularCourse,
  }) = _GetTestState;
  factory GetTestState.initial() => GetTestState(
        state: RequestState.empty,
        message: '',
        allTest: [],
        searchTest: [],
        category: null,
        searchQuery: null,
        totalCount: 0,
        hasMoreData: true,
        lastDocId: null,
        featuredCourse: null,
        mostpopularCourse: null,
      );
}
