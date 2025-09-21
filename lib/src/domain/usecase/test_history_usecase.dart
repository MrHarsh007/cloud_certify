import 'package:cloud_certify/src/common/enum.dart';
import 'package:cloud_certify/src/domain/repository/test_history_repository.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';

@injectable
class TestHistoryUsecase {
  final TestHistoryRepository _repository;
  TestHistoryUsecase(this._repository);

  /// Fetch user test attempts History
  Future<Either<Failure, PaginatedTestAttemptResponse?>> getUserTestHistory(
      {String? testId,
      TestStatusEnum? status,
      TestMode? testMode,
      String? searchQuery,
      String? lastDocId,
      int pageSize = 10}) async {
    return _repository.getUserTestHistory(
      testId: testId,
      status: status,
      testMode: testMode,
      lastDocId: lastDocId,
      pageSize: pageSize,
    );
  }

  // Fetch User Perfomance Summary
  Future<Either<Failure, UserStatistics?>> getUserPerformanceSummary() async {
    return _repository.getUserPerformanceSummary();
  }

  // Fetch Test History Details
  Future<Either<Failure, TestAttemptHistory?>> getTestHistoryDetails(
      {required String attemptId}) async {
    return _repository.getTestHistoryDetails(attemptId: attemptId);
  }
}
