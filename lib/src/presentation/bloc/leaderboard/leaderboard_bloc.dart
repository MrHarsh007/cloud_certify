import 'package:cloud_certify/src/domain/usecase/leaderboard_usecase.dart';
import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'leaderboard_state.dart';
part 'leaderboard_event.dart';
part 'leaderboard_bloc.freezed.dart';

@singleton
class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  final LeaderboardUsecase _leaderboardUsecase;
  LeaderboardBloc(this._leaderboardUsecase)
      : super(LeaderboardState.initial()) {
    on<LeaderboardEvent>((event, emit) async {
      await event.map(
        initial: (event) async {
          emit(state.copyWith(
            state: RequestState.loading,
            message: '',
            leaderboardResponse: null,
          ));
        },
        fetchLeaderboard: (event) async {
          emit(state.copyWith(
            state: RequestState.loading,
            message: '',
            leaderboardResponse: null,
          ));
          final result = await _leaderboardUsecase.fetchLeaderboardData();
          result.fold(
            (failure) => emit(state.copyWith(
              state: RequestState.error,
              message: failure.message,
              leaderboardResponse: null,
            )),
            (leaderboardResponse) => emit(state.copyWith(
              state: RequestState.loaded,
              message: '',
              leaderboardResponse: leaderboardResponse,
            )),
          );
        },
      );
    });
  }
}
