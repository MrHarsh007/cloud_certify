import 'package:cloud_certify/src/common/enum.dart';
import 'package:cloud_certify/src/common/error_handler.dart';
import 'package:cloud_certify/src/common/failure.dart';
import 'package:cloud_certify/src/data/datasource/test_history_remote_datasource.dart';
import 'package:cloud_certify/src/domain/repository/test_history_repository.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TestHistoryRepository)
class TestHistoryRepositoryImpl extends TestHistoryRepository {
  final TestHistoryRemoteDatasource dataSource;
  TestHistoryRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, PaginatedTestAttemptResponse?>> getUserTestHistory({
    String? testId,
    TestStatusEnum? status,
    TestMode? testMode,
    String? searchQuery,
    String? lastDocId,
    int pageSize = 10,
  }) async {
    return handleErrors(
      () => dataSource.getUserTestHistory(
        testId: testId,
        status: status,
        testMode: testMode,
        searchQuery: searchQuery,
        lastDocId: lastDocId,
        pageSize: pageSize,
      ),
    );
  }

  @override
  Future<Either<Failure, UserStatistics?>> getUserPerformanceSummary() async {
    return handleErrors(
      () => dataSource.getPerfomanceSummary(),
    );
  }

  @override
  Future<Either<Failure, TestAttemptHistory?>> getTestHistoryDetails(
      {required String attemptId}) async {
    return handleErrors(
      () => dataSource.getTestHistoryDetails(attemptId: attemptId),
    );
  }
}
