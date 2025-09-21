import 'package:cloud_certify/src/common/constant.dart';
import 'package:cloud_certify/src/common/enum.dart';
import 'package:cloud_certify/src/domain/usecase/streak_usecase.dart';
import 'package:cloud_certify/src/presentation/bloc/recent_activity/recent_activity_bloc.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'streak_state.dart';
part 'streak_event.dart';
part 'streak_bloc.freezed.dart';

@singleton
class StreakBloc extends Bloc<StreakEvent, StreakState> {
  final RecentActivityBloc _recentActivityBloc;
  final StreakUsecase _streakUsecase;
  StreakBloc(this._streakUsecase, this._recentActivityBloc)
      : super(StreakState.initial()) {
    on<StreakEvent>((event, emit) async {
      await event.map(
        initial: (e) async {
          emit(StreakState.initial());
        },
        getTodayQuestion: (e) async {
          emit(state.copyWith(
              state: e.isLoading ? RequestState.loading : RequestState.empty,
              message: "Fetching today's question"));
          final result = await _streakUsecase.getTodayQuestion();
          result.fold(
              (failure) => emit(
                    state.copyWith(
                      state: RequestState.error,
                      message: failure.message,
                    ),
                  ), (question) {
            emit(
              state.copyWith(
                state: RequestState.loaded,
                message: "Fetched today's question",
                todayQuestion: question,
                isCorrect: question?.userAttempt.isCorrect,
                selectedAnswer: question?.userAttempt.answer,
              ),
            );
          });
        },
        sumbitAnswer: (e) async {
          if (state.selectedAnswer == null) {
            emit(state.copyWith(
              state: RequestState.error,
              message: "Please select an answer",
            ));
            return;
          } else if (state.selectedAnswer ==
              state.todayQuestion?.question.correctAnswer) {
            emit(state.copyWith(
              isCorrect: true,
              streakCount: state.streakCount + 1,
              message: "Correct answer",
            ));
            _recentActivityBloc.add(const RecentActivityEvent.addActivityDetail(
                activity: STREAK_ANSWER_CORRECT_ACTIVITY));
          } else {
            emit(state.copyWith(
              isCorrect: false,
              message: "Wrong answer",
            ));
            _recentActivityBloc.add(const RecentActivityEvent.addActivityDetail(
                activity: STREAK_ANSWER_WRONG_ACTIVITY));
          }

          emit(state.copyWith(
            message: "Submitting answer",
          ));
          final result = await _streakUsecase.submitAnswer(
            questionId: state.todayQuestion?.question.id ?? "",
            answer: state.selectedAnswer ?? "",
          );
          result.fold(
              (failure) => emit(
                    state.copyWith(
                      state: RequestState.error,
                      message: failure.message,
                    ),
                  ), (streak) {
            emit(
              state.copyWith(
                message: "Answer submitted successfully",
              ),
            );
            add(StreakEvent.getStreak(isLoading: false));
            add(StreakEvent.getTodayQuestion(isLoading: false));
          });
        },
        getStreak: (_GetStreakEvent value) async {
          emit(state.copyWith(
            state: value.isLoading ? RequestState.loading : RequestState.empty,
            message: "Fetching streak",
          ));
          final result = await _streakUsecase.getStreak();
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (streak) => emit(
              state.copyWith(
                state: RequestState.loaded,
                dailyStreak: streak,
                streakCount: streak?.currentStreak ?? 0,
                message: "Fetched streak successfully",
              ),
            ),
          );
        },
        selectAnswer: (_SelectAnswer value) {
          emit(state.copyWith(
              selectedAnswer: value.answer, state: RequestState.empty));
        },
      );
    });
  }
}
