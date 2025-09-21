import 'package:cloud_certify/src/common/enum.dart';
import 'package:cloud_certify/src/domain/usecase/activity_usecase.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'recent_activity_state.dart';
part 'recent_activity_event.dart';
part 'recent_activity_bloc.freezed.dart';

@singleton
class RecentActivityBloc
    extends Bloc<RecentActivityEvent, RecentActivityState> {
  final ActivityUsecase activityUsecase;
  RecentActivityBloc(this.activityUsecase)
      : super(RecentActivityState.initial()) {
    on<RecentActivityEvent>((event, emit) async {
      await event.map(
        fetchRecentActivity: (event) async {
          emit(state.copyWith(
              state:
                  event.isLoading ? RequestState.loading : RequestState.empty,
              message: "Fetching recent activities"));
          final result = await activityUsecase.fetchRecentActivity();
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (activityList) => emit(
              state.copyWith(
                state: RequestState.loaded,
                activities: activityList,
              ),
            ),
          );
        },
        addActivityDetail: (_AddActivityDetail value) async {
          emit(state.copyWith(state: RequestState.loading));
          final result = await activityUsecase.addActivityDetail(
            activity: value.activity,
            metaData: value.metaData,
          );
          result.fold((failure) {
            emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            );
          }, (activity) {
            emit(
              state.copyWith(
                state: RequestState.loaded,
                message: 'Activity added successfully',
              ),
            );
            add(const RecentActivityEvent.fetchRecentActivity(
                isLoading: false));
          });
        },
      );
    });
  }
}
