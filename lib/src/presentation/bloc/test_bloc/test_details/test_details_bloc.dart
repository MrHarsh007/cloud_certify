import 'package:cloud_certify/src/common/enum.dart';
import 'package:cloud_certify/src/domain/usecase/test_usecase.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'test_details_state.dart';
part 'test_details_event.dart';
part 'test_details_bloc.freezed.dart';

@singleton
class TestDetailsBloc extends Bloc<TestDetailsEvent, TestDetailsState> {
  final TestUsecase _testUsecase;
  TestDetailsBloc(this._testUsecase) : super(TestDetailsState.initial()) {
    on<TestDetailsEvent>((event, emit) async {
      await event.map(
        getTestDetails: (event) async {
          emit(state.copyWith(
            state: event.isLoading ? RequestState.loading : RequestState.empty,
            message: "Loading Test Details...",
          ));
          final result = await _testUsecase.getTestAttemptDetailsWithAttemptId(
              attemptId: event.attemptId);
          result.fold(
            (failure) {
              emit(state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ));
            },
            (testDetails) {
              emit(state.copyWith(
                state: RequestState.loaded,
                testDetails: testDetails,
              ));
            },
          );
        },
        getTestQuestion: (event) async {
          emit(state.copyWith(
            state: RequestState.loading,
            message: "Loading Test Question...",
          ));
          final result = await _testUsecase.getTestQuestionWithTestId(
              testId: event.testId);
          result.fold(
            (failure) {
              emit(state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ));
            },
            (testQuestion) {
              emit(state.copyWith(
                state: RequestState.loaded,
                testQuestion: testQuestion,
                totalQuestions: testQuestion?.questions.length ?? 0,
              ));
            },
          );
        },
        updateCurrentIndex: (event) async {
          emit(state.copyWith(
              currentIndex: event.index,
              state: RequestState.loaded,
              selectedAnswer: []));
        },
        initial: (InitialEvent value) {
          emit(TestDetailsState.initial());
        },
        addSelectedAnswer: (_AddSelectedAnswerEvent value) {
          final optionKey = value.answer;
          final List<String> _selectedAnswer = List.from(state.selectedAnswer);

          if (state
                  .testQuestion?.questions[state.currentIndex].assessmentType ==
              AssessmentType.multiSelect) {
            if (_selectedAnswer.contains(optionKey)) {
              _selectedAnswer.remove(optionKey);
            } else {
              _selectedAnswer.add(optionKey);
            }
          } else {
            _selectedAnswer.clear();
            _selectedAnswer.add(optionKey);
          }

          emit(state.copyWith(selectedAnswer: _selectedAnswer));
        },
      );
    });
  }
}
