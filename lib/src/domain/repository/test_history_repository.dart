import 'package:cloud_certify/src/common/enum.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import '../../common/failure.dart';

abstract class TestHistoryRepository {
  // Fetch user test attempts History
  Future<Either<Failure, PaginatedTestAttemptResponse?>> getUserTestHistory(
      {String? testId,
      TestStatusEnum? status,
      TestMode? testMode,
      String? searchQuery,
      String? lastDocId,
      int pageSize = 10});

  // Fetch User Perfomance Summary
  Future<Either<Failure, UserStatistics?>> getUserPerformanceSummary();

  // Fetch Test History Details
  Future<Either<Failure, TestAttemptHistory?>> getTestHistoryDetails(
      {required String attemptId});
}
