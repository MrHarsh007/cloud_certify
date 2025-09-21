import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import '../../common/failure.dart';

abstract class TestRepository {
  /// Fetches all the tests available.
  Future<Either<Failure, TestSummaryList?>> getAllTest({
    String? category,
    String? cloudProvider,
    int limit = 10,
    String? lastDocId,
    String? searchQuery,
  });

  /// Fetches the test questions for a specific test ID.
  Future<Either<Failure, TestWithQuestions?>> getTestQuestionWithTestId(
      {required String testId});

  /// Starts a test with the given test ID and mode.
  Future<Either<Failure, TestAttemptSummary?>> startTest(
      {required String testId, required TestMode testMode});

  /// Submits an answer for a specific question in a test attempt.
  Future<Either<Failure, SubmitAnswerResponse?>> submitAnswer(
      {required String attemptId,
      required String questionId,
      required List<String> selectedOptions,
      required int timeTaken});

  /// Finishes a test attempt with the given attempt ID.
  Future<Either<Failure, TestAttemptSummary?>> finishTestWithAttemptId(
      {required String attemptId});

  /// Fetches the details of a test attempt using the attempt ID.
  Future<Either<Failure, TestAttempt?>> getTestAttemptDetailsWithAttemptId(
      {required String attemptId});
}
