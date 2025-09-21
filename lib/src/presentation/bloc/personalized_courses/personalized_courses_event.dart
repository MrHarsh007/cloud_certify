part of 'personalized_courses_bloc.dart';

@freezed
class PersonalizedCoursesEvent with _$PersonalizedCoursesEvent {
  // Fetch TestRecommendataion
  const factory PersonalizedCoursesEvent.fetchUserPersonalizedCourses(
      {RecommendationType? type,
      @Default(10) int limite}) = _FetchUserPersonalizedCourses;
}
