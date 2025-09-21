import 'package:cloud_certify/src/common/error_handler.dart';
import 'package:cloud_certify/src/common/failure.dart';
import 'package:cloud_certify/src/domain/repository/test_repository.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../datasource/test_remote_datasource.dart';

@LazySingleton(as: TestRepository)
class TestRepositoryImpl extends TestRepository {
  final TestRemoteDatasource dataSource;
  TestRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, TestSummaryList?>> getAllTest({
    String? category,
    String? cloudProvider,
    int limit = 10,
    String? lastDocId,
    String? searchQuery,
  }) async {
    return handleErrors(
      () => dataSource.getAllTest(
          category: category,
          cloudProvider: cloudProvider,
          lastDocId: lastDocId,
          searchQuery: searchQuery,
          limit: limit),
    );
  }

  @override
  Future<Either<Failure, TestWithQuestions?>> getTestQuestionWithTestId(
      {required String testId}) async {
    return handleErrors(
      () => dataSource.getTestQuestionWithTestId(testId: testId),
    );
  }

  @override
  @override
  Future<Either<Failure, TestAttemptSummary?>> finishTestWithAttemptId(
      {required String attemptId}) async {
    return handleErrors(
      () => dataSource.finishTestWithAttemptId(attemptId: attemptId),
    );
  }

  @override
  Future<Either<Failure, TestAttempt?>> getTestAttemptDetailsWithAttemptId(
      {required String attemptId}) async {
    return handleErrors(
      () => dataSource.getTestAttemptDetailsWithAttemptId(attemptId: attemptId),
    );
  }

  @override
  Future<Either<Failure, TestAttemptSummary?>> startTest(
      {required String testId, required TestMode testMode}) {
    return handleErrors(
      () => dataSource.startTest(testId: testId, testMode: testMode),
    );
  }

  @override
  Future<Either<Failure, SubmitAnswerResponse?>> submitAnswer(
      {required String attemptId,
      required String questionId,
      required List<String> selectedOptions,
      required int timeTaken}) {
    return handleErrors(
      () => dataSource.submitAnswer(
          attemptId: attemptId,
          questionId: questionId,
          selectedOptions: selectedOptions,
          timeTaken: timeTaken),
    );
  }
}
