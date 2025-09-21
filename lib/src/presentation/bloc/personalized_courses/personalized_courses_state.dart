part of 'personalized_courses_bloc.dart';

@freezed
class PersonalizedCoursesState with _$PersonalizedCoursesState {
  factory PersonalizedCoursesState({
    required RequestState state,
    required String message,
    required List<TestRecommendation> recommendationsTest,
  }) = _PersonalizedCoursesState;
  factory PersonalizedCoursesState.initial() => PersonalizedCoursesState(
        state: RequestState.empty,
        message: '',
        recommendationsTest: [],
      );
}
