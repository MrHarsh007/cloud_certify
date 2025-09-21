import 'package:cloud_certify/src/domain/usecase/test_history_usecase.dart';
import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'test_history_details_state.dart';
part 'test_history_details_event.dart';
part 'test_history_details_bloc.freezed.dart';

@singleton
class TestHistoryDetailsBloc
    extends Bloc<TestHistoryDetailsEvent, TestHistoryDetailsState> {
  final TestHistoryUsecase _testHistoryUsecase;

  TestHistoryDetailsBloc(this._testHistoryUsecase)
      : super(TestHistoryDetailsState.initial()) {
    on<TestHistoryDetailsEvent>((event, emit) async {
      await event.map(
        // Reset state to initial
        initial: (_) async {
          emit(TestHistoryDetailsState.initial());
        },

        // Fetch full test history by attempt ID
        getTestHistoryDetails: (event) async {
          emit(state.copyWith(
            state: RequestState.loading,
            message: "Loading Test History Details",
          ));

          final result = await _testHistoryUsecase.getTestHistoryDetails(
            attemptId: event.attemptId,
          );

          result.fold(
            (failure) {
              emit(state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ));
            },
            (testHistory) {
              final allQuestions = _mapAllQuestions(testHistory);
              emit(state.copyWith(
                state: RequestState.loaded,
                testHistory: testHistory,
                questionDetails: allQuestions,
                selectedIndex: 0,
              ));
            },
          );
        },

        // Handle question search
        searchQuestion: (event) {
          final query = event.searchQuery?.toLowerCase().trim();

          if (query == null || query.isEmpty) {
            // Re-populate based on selected tab index if query is empty
            add(TestHistoryDetailsEvent.changeQuestionDetails(
              selectedIndex: state.selectedIndex,
            ));
            return;
          }

          final filteredQuestions = state.questionDetails
              ?.where((q) =>
                  q.question.toLowerCase().contains(query) ||
                  q.topic.toLowerCase().contains(query))
              .toList();

          emit(state.copyWith(
            searchQuery: event.searchQuery,
            filteredQuestionDetails: filteredQuestions,
          ));
        },

        // Tab change: All, Attempted, Unattempted
        changeQuestionDetails: (event) {
          final index = event.selectedIndex;
          final history = state.testHistory;

          List<TotalQuestionDetail>? updatedList;

          if (index == 0) {
            updatedList = _mapAllQuestions(history);
          } else if (index == 1) {
            updatedList = _mapAttemptedQuestions(history);
          } else if (index == 2) {
            updatedList = _mapUnattemptedQuestions(history);
          }

          emit(state.copyWith(
            selectedIndex: index,
            questionDetails: updatedList,
            searchQuery: null, // Reset search on tab switch
          ));
        },

        // Load more questions (pagination-like behavior)
        loadMoreQuestions: (_) {
          final current = state.totalCount;
          final available = state.questionDetails?.length ?? 0;

          const increment = 5;
          final remaining = available - current;
          final toAdd = remaining >= increment ? increment : remaining;

          if (toAdd > 0) {
            emit(state.copyWith(totalCount: current + toAdd));
          }
        },
      );
    });
  }

  // 🔹 Helpers

  List<TotalQuestionDetail> _mapAllQuestions(TestAttemptHistory? history) {
    return [
      ..._mapAttemptedQuestions(history),
      ..._mapUnattemptedQuestions(history),
    ];
  }

  List<TotalQuestionDetail> _mapAttemptedQuestions(
      TestAttemptHistory? history) {
    return history?.attemptedQuestions?.map((q) {
          return TotalQuestionDetail(
            question: q.questionText,
            answer: q.selectedOption.toList().toString(),
            correctAnswer: q.correctOption,
            explanation: q.explanation,
            isCorrect: q.isCorrect,
            topic: q.topic,
            options: q.options.toMap(),
          );
        }).toList() ??
        [];
  }

  List<TotalQuestionDetail> _mapUnattemptedQuestions(
      TestAttemptHistory? history) {
    return history?.unattemptedQuestions?.map((q) {
          return TotalQuestionDetail(
            question: q.questionText,
            answer: "",
            correctAnswer: q.correctOption,
            explanation: q.explanation,
            isCorrect: false,
            topic: q.topic,
            options: q.options.toMap(),
          );
        }).toList() ??
        [];
  }
}
