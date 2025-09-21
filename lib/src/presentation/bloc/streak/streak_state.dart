part of 'streak_bloc.dart';

@freezed
class StreakState with _$StreakState {
  factory StreakState({
    required RequestState state,
    required String message,
    required bool? isCorrect,
    required String? selectedAnswer,
    required DailyQuestionWithAttempt? todayQuestion,
    required DailyStreak? dailyStreak,
    required int streakCount,
  }) = _StreakState;
  factory StreakState.initial() => StreakState(
        state: RequestState.empty,
        message: '',
        isCorrect: null,
        selectedAnswer: null,
        todayQuestion: null,
        dailyStreak: null,
        streakCount: 0,
      );
}
