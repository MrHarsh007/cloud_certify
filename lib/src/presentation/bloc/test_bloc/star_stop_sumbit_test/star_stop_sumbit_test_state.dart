part of 'star_stop_sumbit_test_bloc.dart';

@freezed
class StarStopSumbitTestState with _$StarStopSumbitTestState {
  factory StarStopSumbitTestState({
    required RequestState state,
    required String message,
    required SubmitAnswerResponse? submitResponse,
    required String? testId,
    required String? attemptId,
    @Default(0) int seconds,
    required bool isTestRunning,
  }) = _StarStopSumbitTestState;

  factory StarStopSumbitTestState.initial() => StarStopSumbitTestState(
      state: RequestState.empty,
      message: '',
      submitResponse: null,
      testId: null,
      attemptId: null,
      seconds: 0,
      isTestRunning: false);
}
