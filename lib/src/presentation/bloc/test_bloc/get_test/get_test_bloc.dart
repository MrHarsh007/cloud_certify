import 'package:cloud_certify/src/common/enum.dart';
import 'package:cloud_certify/src/domain/usecase/test_usecase.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_test_state.dart';
part 'get_test_event.dart';
part 'get_test_bloc.freezed.dart';

@singleton
class GetTestBloc extends Bloc<GetTestEvent, GetTestState> {
  final TestUsecase _testUsecase;
  GetTestBloc(this._testUsecase) : super(GetTestState.initial()) {
    on<GetTestEvent>((event, emit) async {
      await event.map(
        initial: (event) async {
          emit(GetTestState.initial());
        },
        getAllTest: (event) async {
          emit(state.copyWith(
              state: event.fetchMore
                  ? RequestState.updating
                  : RequestState.loading,
              message: "Fetching All Test..."));
          final result = await _testUsecase.getAllTest(
              lastDocId: event.fetchMore ? state.lastDocId : null,
              limit: 12,
              searchQuery: state.searchQuery,
              category: state.category == "All" ? null : state.category);
          result.fold(
            (failure) {
              emit(state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ));
            },
            (allTest) {
              final fetchedTest = List<TestSummary>.from(state.allTest);

              if (!event.fetchMore) {
                fetchedTest.clear();
                // only set when loaded full reset
                emit(state.copyWith(
                    featuredCourse: allTest?.featuredTest,
                    mostpopularCourse: allTest?.mostPopularTest));
              }

              fetchedTest.addAll(allTest?.tests.toList() ?? []);
              emit(state.copyWith(
                state: RequestState.loaded,
                allTest: fetchedTest,
                lastDocId: allTest?.nextCursor ?? "",
                hasMoreData: allTest?.nextCursor != null,
              ));
            },
          );
        },
        changeCategory: (_ChangeCategory value) {
          emit(state.copyWith(
            state: RequestState.empty,
            category: value.category,
          ));
          add(GetTestEvent.getAllTest(isLoading: true));
        },
        changeSearchQuery: (_ChangeSearchQuery event) {
          if (event.searchQuery == null) {
            emit(state.copyWith(
              searchQuery: null,
            ));
            add(GetTestEvent.getAllTest(isLoading: true, fetchMore: false));
          } else {
            emit(state.copyWith(
              searchQuery: event.searchQuery,
            ));
            add(GetTestEvent.getAllTest(isLoading: true, fetchMore: false));
          }
          // final query = event.searchQuery?.toLowerCase();
          // final filteredTestHistory = state.allTest.where((test) {
          //   return test.title.toLowerCase().contains(query ?? "");
          // }).toList();
          // emit(state.copyWith(
          //   searchQuery: event.searchQuery,
          //   searchTest: filteredTestHistory,
          // ));
        },
      );
    });
  }
}
