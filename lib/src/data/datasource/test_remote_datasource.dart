import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_certify/src/utilities/base_data_center.dart';

/// An abstract class that defines the contract for the remote data source
/// responsible for handling Test-related operations.
abstract class TestRemoteDatasource {
  /// Fetches all the tests available.
  ///
  /// Returns a list of [TestSummary] or null if no tests are available.
  /// Fetches all the tests available with optional filters for category and cloud provider.
  ///
  /// [category] - An optional parameter to filter tests by category.
  /// [cloudProvider] - An optional parameter to filter tests by cloud provider.
  ///
  /// Returns a list of [TestSummary] or null if no tests are available.
  Future<TestSummaryList?> getAllTest({
    String? category,
    String? cloudProvider,
    int limit = 10,
    String? lastDocId,
    String? searchQuery,
  });

  /// Fetches the test questions for a specific test ID.
  ///
  /// [testId] - The ID of the test to fetch questions for.
  ///
  /// Returns a [TestWithQuestions] object containing the test questions or null.
  Future<TestWithQuestions?> getTestQuestionWithTestId(
      {required String testId});

  /// Starts a test with the given test ID and mode.
  ///
  /// [testId] - The ID of the test to start.
  /// [testMode] - The mode in which the test should be started.
  ///
  /// Returns a [TestAttemptSummary] object containing the test attempt details or null.
  Future<TestAttemptSummary?> startTest(
      {required String testId, required TestMode testMode});

  /// Submits an answer for a specific question in a test attempt.
  ///
  /// [attemptId] - The ID of the test attempt.
  /// [questionId] - The ID of the question being answered.
  /// [selectedOptions] - A list of selected options for the question.
  /// [timeTaken] - The time taken to answer the question (default is 0).
  ///
  /// Returns a [SubmitAnswerResponse] object containing the result of the submission or null.
  Future<SubmitAnswerResponse?> submitAnswer(
      {required String attemptId,
      required String questionId,
      required List<String> selectedOptions,
      required int timeTaken});

  /// Finishes a test attempt with the given attempt ID.
  ///
  /// [attemptId] - The ID of the test attempt to finish.
  ///
  /// Returns a [TestAttemptSummary] object containing the summary of the finished test attempt or null.
  Future<TestAttemptSummary?> finishTestWithAttemptId(
      {required String attemptId});

  /// Fetches the details of a test attempt using the attempt ID.
  ///
  /// [attemptId] - The ID of the test attempt to fetch details for.
  ///
  /// Returns a [TestAttempt] object containing the details of the test attempt or null.
  Future<TestAttempt?> getTestAttemptDetailsWithAttemptId(
      {required String attemptId});
}

/// Implementation of [TestRemoteDatasource] that interacts with the remote API.
///
/// This class uses the [BaseDataCenter] as its base and provides concrete
/// implementations for the methods defined in [TestRemoteDatasource].
@LazySingleton(as: TestRemoteDatasource)
class TestRemoteDatasourceImpl extends BaseDataCenter
    implements TestRemoteDatasource {
  /// Fetches all the tests available from the remote API.
  ///
  /// Returns a list of [TestSummary] or null if no tests are available.
  /// [category] - An optional parameter to filter tests by category.
  /// [cloudProvider] - An optional parameter to filter tests by cloud provider.

  @override
  Future<TestSummaryList?> getAllTest({
    String? category,
    String? cloudProvider,
    int limit = 10,
    String? lastDocId,
    String? searchQuery,
  }) async {
    try {
      final response = await serviceApi.getAllTestsRouteBTestLibraryTestsGet(
          cursor: lastDocId,
          limit: limit,
          category: category,
          search: searchQuery,
          cloudProvider: cloudProvider);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  /// Finishes a test attempt with the given attempt ID using the remote API.
  ///
  /// [attemptId] - The ID of the test attempt to finish.
  ///
  /// Returns a [TestAttemptSummary] object containing the summary of the finished test attempt or null.
  @override
  Future<TestAttemptSummary?> finishTestWithAttemptId(
      {required String attemptId}) async {
    try {
      final response = await serviceApi
          .finishTestAttemptRouteBTestLibraryAttemptsAttemptIdFinishPost(
              attemptId: attemptId);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  /// Fetches the details of a test attempt using the attempt ID from the remote API.
  ///
  /// [attemptId] - The ID of the test attempt to fetch details for.
  ///
  /// Returns a [TestAttempt] object containing the details of the test attempt or null.
  @override
  Future<TestAttempt?> getTestAttemptDetailsWithAttemptId(
      {required String attemptId}) async {
    try {
      final response =
          await serviceApi.getTestAttemptRouteBTestLibraryAttemptsAttemptIdGet(
              attemptId: attemptId);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  /// Fetches the test questions for a specific test ID using the remote API.
  ///
  /// [testId] - The ID of the test to fetch questions for.
  ///
  /// Returns a [TestWithQuestions] object containing the test questions or null.
  @override
  Future<TestWithQuestions?> getTestQuestionWithTestId(
      {required String testId}) async {
    try {
      final response = await serviceApi
          .getTestWithQuestionsRouteBTestLibraryTestsTestIdGet(testId: testId);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  /// Starts a test with the given test ID and mode using the remote API.
  ///
  /// [testId] - The ID of the test to start.
  /// [testMode] - The mode in which the test should be started.
  ///
  /// Returns a [TestAttemptSummary] object containing the test attempt details or null.
  @override
  Future<TestAttemptSummary?> startTest(
      {required String testId, required TestMode testMode}) async {
    try {
      final response =
          await serviceApi.startTestRouteBTestLibraryTestsTestIdStartPost(
              testId: testId,
              startTestRequest: StartTestRequest((s) {
                s.mode = testMode;
              }));
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  /// Submits an answer for a specific question in a test attempt using the remote API.
  ///
  /// [attemptId] - The ID of the test attempt.
  /// [questionId] - The ID of the question being answered.
  /// [selectedOptions] - A list of selected options for the question.
  /// [timeTaken] - The time taken to answer the question (default is 0).
  ///
  /// Returns a [SubmitAnswerResponse] object containing the result of the submission or null.
  @override
  Future<SubmitAnswerResponse?> submitAnswer(
      {required String attemptId,
      required String questionId,
      required List<String> selectedOptions,
      int timeTaken = 0}) async {
    try {
      final response = await serviceApi
          .submitAnswerRouteBTestLibraryAttemptsAttemptIdAnswerPost(
              attemptId: attemptId,
              submitAnswerRequest: SubmitAnswerRequest((s) {
                s.questionId = questionId;
                s.selectedOption = ListBuilder(selectedOptions);
                s.timeTaken = timeTaken;
              }));
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
