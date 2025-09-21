import 'package:cloud_certify/src/domain/usecase/activity_usecase.dart';
import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'personalized_courses_state.dart';
part 'personalized_courses_event.dart';
part 'personalized_courses_bloc.freezed.dart';

@singleton
class PersonalizedCoursesBloc
    extends Bloc<PersonalizedCoursesEvent, PersonalizedCoursesState> {
  final ActivityUsecase _activityUsecase;
  PersonalizedCoursesBloc(this._activityUsecase)
      : super(PersonalizedCoursesState.initial()) {
    on<PersonalizedCoursesEvent>((event, emit) async {
      await event.map(
        fetchUserPersonalizedCourses: (event) async {
          emit(state.copyWith(
              state: RequestState.loading,
              message: "Fetching personalized courses"));
          final result = await _activityUsecase.fetchUserPersonalizedCourses(
            type: event.type,
            limite: event.limite,
          );
          result.fold(
            (failure) {
              emit(
                state.copyWith(
                  state: RequestState.error,
                  message: failure.message,
                ),
              );
            },
            (recommendationsTest) {
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  recommendationsTest: recommendationsTest,
                ),
              );
            },
          );
        },
      );
    });
  }
}
