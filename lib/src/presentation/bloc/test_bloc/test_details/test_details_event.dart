part of 'test_details_bloc.dart';

@freezed
class TestDetailsEvent with _$TestDetailsEvent {
  const factory TestDetailsEvent.getTestDetails({
    @Default(true) bool isLoading,
    required String attemptId,
  }) = GetTestDetailsEvent;

  const factory TestDetailsEvent.getTestQuestion({
    required String testId,
  }) = GetTestQuestionEvent;

  const factory TestDetailsEvent.updateCurrentIndex(int index) =
      UpdateCurrentIndexEvent;

  // initial event
  const factory TestDetailsEvent.initial() = InitialEvent;

  // add selected answer
  const factory TestDetailsEvent.addSelectedAnswer({
    required String answer,
  }) = _AddSelectedAnswerEvent;
}
