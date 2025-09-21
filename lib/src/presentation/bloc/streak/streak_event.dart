part of 'streak_bloc.dart';

@freezed
class StreakEvent with _$StreakEvent {
  const factory StreakEvent.initial() = _Initial;
  const factory StreakEvent.getStreak({@Default(true) bool isLoading}) =
      _GetStreakEvent;
  const factory StreakEvent.getTodayQuestion({@Default(true) bool isLoading}) =
      _GetTodayQuestion;

  const factory StreakEvent.sumbitAnswer() = _SumbitAnswer;
  const factory StreakEvent.selectAnswer(String answer) = _SelectAnswer;
}
