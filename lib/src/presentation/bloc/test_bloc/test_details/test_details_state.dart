part of 'test_details_bloc.dart';

@freezed
class TestDetailsState with _$TestDetailsState {
  factory TestDetailsState({
    required RequestState state,
    required String message,
    required TestWithQuestions? testQuestion,
    required TestAttempt? testDetails,
    required int currentIndex,
    required int? totalQuestions,
    required List<String> selectedAnswer,
  }) = _TestDetailsState;
  factory TestDetailsState.initial() => TestDetailsState(
      state: RequestState.empty,
      message: '',
      testQuestion: null,
      testDetails: null,
      selectedAnswer: [],
      currentIndex: 0,
      totalQuestions: 0);
}
