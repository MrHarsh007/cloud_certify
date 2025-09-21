import 'package:cloud_certify/src/domain/repository/test_repository.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';

@injectable
class TestUsecase {
  final TestRepository _repository;
  TestUsecase(this._repository);

  /// Fetches all the tests available.
  Future<Either<Failure, TestSummaryList?>> getAllTest({
    String? category,
    String? cloudProvider,
    int limit = 10,
    String? lastDocId,
    String? searchQuery,
  }) async {
    return _repository.getAllTest(
        category: category,
        cloudProvider: cloudProvider,
        lastDocId: lastDocId,
        searchQuery: searchQuery,
        limit: limit);
  }

  /// Fetches the test questions for a specific test ID.
  Future<Either<Failure, TestWithQuestions?>> getTestQuestionWithTestId(
      {required String testId}) async {
    return _repository.getTestQuestionWithTestId(testId: testId);
  }

  /// Starts a test with the given test ID and mode.
  Future<Either<Failure, TestAttemptSummary?>> startTest(
      {required String testId, required TestMode testMode}) async {
    return _repository.startTest(testId: testId, testMode: testMode);
  }

  /// Submits an answer for a specific question in a test attempt.
  Future<Either<Failure, SubmitAnswerResponse?>> submitAnswer(
      {required String attemptId,
      required String questionId,
      required List<String> selectedOptions,
      required int timeTaken}) async {
    return _repository.submitAnswer(
        attemptId: attemptId,
        questionId: questionId,
        selectedOptions: selectedOptions,
        timeTaken: timeTaken);
  }

  /// Finishes a test attempt with the given attempt ID.
  Future<Either<Failure, TestAttemptSummary?>> finishTestWithAttemptId(
      {required String attemptId}) async {
    return _repository.finishTestWithAttemptId(attemptId: attemptId);
  }

  /// Fetches the details of a test attempt using the attempt ID.
  Future<Either<Failure, TestAttempt?>> getTestAttemptDetailsWithAttemptId(
      {required String attemptId}) async {
    return _repository.getTestAttemptDetailsWithAttemptId(attemptId: attemptId);
  }
}
