import 'dart:async';
import 'package:cloud_certify/src/domain/usecase/test_usecase.dart';
import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'star_stop_sumbit_test_state.dart';
part 'star_stop_sumbit_test_event.dart';
part 'star_stop_sumbit_test_bloc.freezed.dart';

@singleton
class StarStopSumbitTestBloc
    extends Bloc<StarStopSumbitTestEvent, StarStopSumbitTestState> {
  final TestUsecase _testUsecase;
  final TestDetailsBloc _testDetailsBloc;
  final RecentActivityBloc _recentActivityBloc;
  final TestHistoryBloc _testHistoryBloc;
  final LeaderboardBloc _leaderboardBloc;

  Timer? _timer;

  StarStopSumbitTestBloc(this._testUsecase, this._testDetailsBloc,
      this._leaderboardBloc, this._recentActivityBloc, this._testHistoryBloc)
      : super(StarStopSumbitTestState.initial()) {
    on<StarStopSumbitTestEvent>((event, emit) async {
      await event.map(
        startTest: (event) async {
          emit(state.copyWith(
              state: RequestState.loading,
              message: "Starting Test...",
              testId: event.testId));
          final result = await _testUsecase.startTest(
              testId: event.testId, testMode: event.testMode);
          result.fold(
            (failure) {
              emit(state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ));
            },
            (testAttempt) {
              emit(state.copyWith(
                state: RequestState.loaded,
                attemptId: testAttempt?.attemptId,
                testId: testAttempt?.testId,
              ));
              final activityDescription =
                  "${(testAttempt?.resume ?? false) ? 'Resumed' : 'Started'} test: ${testAttempt?.testData?.title}";
              final Map<String, String> metaData = {
                "attempt_id": testAttempt?.attemptId ?? "",
                "test_id": testAttempt?.testId ?? "",
              };
              _recentActivityBloc.add(RecentActivityEvent.addActivityDetail(
                  activity: activityDescription, metaData: metaData));
            },
          );
        },
        startTimer: (_) {
          _timer?.cancel();
          emit(state.copyWith(
            state: RequestState.empty,
            isTestRunning: true,
          ));
          _timer = Timer.periodic(const Duration(seconds: 1), (_) {
            add(const StarStopSumbitTestEvent.incrementTimer());
          });
        },
        incrementTimer: (_) {
          emit(state.copyWith(seconds: state.seconds + 1));
        },
        submitAnswer: (event) async {
          final int secondsTaken = state.seconds;
          emit(state.copyWith(
            state: RequestState.loading,
            message: "Submitting Answer...",
            submitResponse: null,
          ));
          _timer?.cancel();
          final result = await _testUsecase.submitAnswer(
            attemptId: event.attemptId,
            questionId: event.questionId,
            selectedOptions: event.selectedOptions,
            timeTaken: secondsTaken,
          );

          result.fold(
            (failure) {
              emit(state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ));
            },
            (submitResponse) {
              _testDetailsBloc.add(TestDetailsEvent.getTestDetails(
                  attemptId: event.attemptId, isLoading: false));

              emit(state.copyWith(
                  submitResponse: submitResponse,
                  state: RequestState.loaded,
                  seconds: 0)); // reset timer after submit
            },
          );
        },
        finishTest: (event) async {
          _timer?.cancel();
          emit(state.copyWith(
              state: RequestState.loading,
              message: "Finishing Test...",
              seconds: 0));
          final result = await _testUsecase.finishTestWithAttemptId(
            attemptId: event.attemptId,
          );
          result.fold(
            (failure) {
              emit(state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ));
            },
            (testAttemptSummary) {
              emit(state.copyWith(
                state: RequestState.loaded,
                message: 'Test Finished',
              ));
              final activityDescription =
                  "Completed test: ${testAttemptSummary?.testData?.title}";
              final Map<String, String> metaData = {
                "attempt_id": testAttemptSummary?.attemptId ?? "",
                "test_id": testAttemptSummary?.testId ?? "",
              };
              _recentActivityBloc.add(RecentActivityEvent.addActivityDetail(
                  activity: activityDescription, metaData: metaData));
              _testHistoryBloc.add(TestHistoryEvent.getUserStatistics());
              _testHistoryBloc.add(TestHistoryEvent.getTestHistory());
              _leaderboardBloc.add(LeaderboardEvent.fetchLeaderboard());
            },
          );
        },
        setSubmitAnswerNull: (_) {
          _timer?.cancel();
          add(StarStopSumbitTestEvent.startTimer());
          emit(state.copyWith(
            state: RequestState.empty,
            submitResponse: null,
          ));
        },
        setAttemptId: (value) {
          emit(state.copyWith(
            state: RequestState.empty,
            attemptId: value.attemptId,
          ));
        },
        resetTimer: (ResetTimerEvent value) {
          _timer?.cancel();
          emit(state.copyWith(
            state: RequestState.empty,
            isTestRunning: false,
            seconds: 0,
          ));
          if (value.isStopTimer == false) {
            add(StarStopSumbitTestEvent.startTimer());
          }
        },
      );
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
