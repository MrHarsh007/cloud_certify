import 'package:cloud_certify/src/common/enum.dart';
import 'package:cloud_certify/src/domain/usecase/test_history_usecase.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'test_history_state.dart';
part 'test_history_event.dart';
part 'test_history_bloc.freezed.dart';

@singleton
class TestHistoryBloc extends Bloc<TestHistoryEvent, TestHistoryState> {
  final TestHistoryUsecase _testHistoryUsecase;
  TestHistoryBloc(this._testHistoryUsecase)
      : super(TestHistoryState.initial()) {
    on<TestHistoryEvent>((event, emit) async {
      await event.map(
        initial: (event) async {
          emit(TestHistoryState.initial());
        },
        getTestHistory: (event) async {
          emit(state.copyWith(
              state: event.fetchMore
                  ? RequestState.updating
                  : RequestState.loading,
              message: "Loading Test History"));
          add(TestHistoryEvent.getUserStatistics());
          final result = await _testHistoryUsecase.getUserTestHistory(
              pageSize: 1000,
              lastDocId: event.fetchMore ? state.lastDocId : null,
              searchQuery: event.searchQuery,
              status: state.status);
          result.fold(
              (failure) => emit(
                    state.copyWith(
                      state: RequestState.error,
                      message: failure.message,
                    ),
                  ), (testHistory) {
            final fetchedTest =
                List<TestAttemptSummary>.from(state.testHistory);

            if (!event.fetchMore) {
              fetchedTest.clear();
            }

            fetchedTest.addAll(testHistory?.attempts.toList() ?? []);

            emit(
              state.copyWith(
                state: RequestState.loaded,
                testHistory: fetchedTest,
              ),
            );
          });
        },
        changeSearchQuery: (event) {
          final query = event.query?.toLowerCase();
          final filteredTestHistory = state.testHistory.where((test) {
            return (test.testData?.title ?? "")
                .toLowerCase()
                .contains(query ?? "");
          }).toList();
          emit(state.copyWith(
            searchQuery: event.query,
            searchTestHistory: filteredTestHistory,
          ));
        },
        resetSearchTestHistory: (_ResetSearchTestHistory value) {
          emit(state.copyWith(
            searchQuery: null,
            searchTestHistory: [],
          ));
        },
        changeRowPerPage: (_ChangeRowPerPage value) {
          emit(state.copyWith(
            state: RequestState.empty,
            rowPerPages: value.rowPerPage,
          ));
        },
        getUserStatistics: (_GetUserStatistics value) async {
          emit(state.copyWith(
            state: RequestState.loading,
            message: "Loading User Statistics",
          ));
          final result = await _testHistoryUsecase.getUserPerformanceSummary();
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (userStatistics) => emit(
              state.copyWith(
                state: RequestState.loaded,
                userStatistics: userStatistics,
              ),
            ),
          );
        },
        changePageNumber: (_ChangePageNumber value) {
          if (state.pageNumber > (value.pageNumber ?? 1)) {
            add(TestHistoryEvent.getTestHistory(fetchMore: true));
          }
          emit(state.copyWith(
            state: RequestState.empty,
            pageNumber: value.pageNumber ?? 1,
          ));
        },
      );
    });
  }
}
