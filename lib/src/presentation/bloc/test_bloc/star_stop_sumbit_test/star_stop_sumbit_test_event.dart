part of 'star_stop_sumbit_test_bloc.dart';

@freezed
class StarStopSumbitTestEvent with _$StarStopSumbitTestEvent {
  const factory StarStopSumbitTestEvent.startTest({
    required String testId,
    @Default(TestMode.practice) TestMode testMode,
  }) = StartTestEvent;

  const factory StarStopSumbitTestEvent.submitAnswer({
    required String attemptId,
    required String questionId,
    required List<String> selectedOptions,
  }) = SubmitAnswerEvent;

  const factory StarStopSumbitTestEvent.setSubmitAnswerNull() =
      ChangeSubmitAnswerEvent;

  const factory StarStopSumbitTestEvent.finishTest({
    required String attemptId,
  }) = FinishTestEvent;

  const factory StarStopSumbitTestEvent.setAttemptId({
    required String attemptId,
  }) = SetAttemptIdEvent;

  const factory StarStopSumbitTestEvent.startTimer() = StartTimerEvent;

  const factory StarStopSumbitTestEvent.incrementTimer() = IncrementTimerEvent;

  const factory StarStopSumbitTestEvent.resetTimer(
      {@Default(false) bool isStopTimer}) = ResetTimerEvent;
}
