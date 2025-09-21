import 'package:cloud_certify/src/common/enum.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_certify/src/utilities/base_data_center.dart';

/// An abstract class that defines the contract for the remote data source
/// responsible for handling Test-related operations.
abstract class TestHistoryRemoteDatasource {
  /// Fetches the test history of a user.
  ///
  /// This method retrieves a list of [TestAttemptSummary] objects based on the
  /// provided optional filters: [testId], [status], and [testMode].
  ///
  /// - [testId]: The ID of the test to filter the history by.
  /// - [status]: The status of the test attempts to filter by (e.g., completed, in-progress).
  /// - [testMode]: The mode of the test to filter by (e.g., practice, exam).
  ///
  /// Returns a `Future` that resolves to a list of [TestAttemptSummary] objects
  /// or `null` if no history is found.
  Future<PaginatedTestAttemptResponse?> getUserTestHistory(
      {String? testId,
      TestStatusEnum? status,
      TestMode? testMode,
      String? searchQuery,
      String? lastDocId,
      int pageSize = 10});

  // Fetch Test Stats
  Future<UserStatistics?> getPerfomanceSummary();

  // Fetch Test History Details
  Future<TestAttemptHistory?> getTestHistoryDetails(
      {required String attemptId});
}

/// Implementation of [TestHistoryRemoteDatasource] that interacts with the remote API.
///
/// This class uses the [BaseDataCenter] as its base and provides concrete
/// implementations for the methods defined in [TestHistoryRemoteDatasource].
@LazySingleton(as: TestHistoryRemoteDatasource)
class TestHistoryRemoteDatasourceImpl extends BaseDataCenter
    implements TestHistoryRemoteDatasource {
  /// Fetches the user's test history based on the provided filters.
  ///
  /// This method retrieves a list of test attempt summaries for a user.
  /// The results can be filtered by test ID, test status, and test mode.
  ///
  /// - [testId]: (Optional) The ID of the test to filter the results.
  /// - [status]: (Optional) The status of the test attempts to filter by.
  ///   Possible values are [TestStatusEnum.completed] or [TestStatusEnum.inProgress].
  /// - [testMode]: (Optional) The mode of the test to filter the results.
  ///
  /// Returns a [Future] containing a list of [TestAttemptSummary] objects,
  /// or `null` if no data is available.
  ///
  /// Throws:
  /// - Any exception encountered during the API call is rethrown.
  @override
  Future<PaginatedTestAttemptResponse?> getUserTestHistory(
      {String? testId,
      TestStatusEnum? status,
      TestMode? testMode,
      String? searchQuery,
      String? lastDocId,
      int pageSize = 10}) async {
    String? apiStatus;
    if (status == TestStatusEnum.completed) {
      apiStatus = "completed";
    } else if (status == TestStatusEnum.inProgress) {
      apiStatus = "in-progress";
    } else {
      apiStatus = null;
    }
    try {
      final response =
          await serviceApi.getUserTestAttemptsRouteBTestLibraryAttemptsGet(
              cursor: lastDocId,
              pageSize: pageSize,
              testId: testId,
              status: apiStatus,
              mode: testMode);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserStatistics?> getPerfomanceSummary() async {
    try {
      final response =
          await serviceApi.userStatisticsBUserStatisticsUserStatisticsGet();
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TestAttemptHistory?> getTestHistoryDetails(
      {required String attemptId}) async {
    try {
      final response = await serviceApi
          .getTestAttemptHistoryRouteBTestLibraryHistoryAttemptsAttemptIdGet(
              attemptId: attemptId);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
