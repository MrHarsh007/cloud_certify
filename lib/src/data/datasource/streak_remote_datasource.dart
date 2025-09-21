import 'package:cloud_certify/src/utilities/base_data_center.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:injectable/injectable.dart';

/// An abstract class that defines the contract for interacting with the remote
/// data source for streak-related operations.
abstract class StreakRemoteDatasource {
  /// Fetches the current daily streak of the user.
  ///
  /// Returns a [DailyStreak] object if the operation is successful, or `null`
  /// if no streak data is available.
  Future<DailyStreak?> getStreak();

  /// Fetches the daily question for the user along with their attempt status.
  ///
  /// Returns a [DailyQuestionWithAttempt] object if the operation is successful,
  /// or `null` if no question is available for today.
  Future<DailyQuestionWithAttempt?> getTodayQuestion();

  /// Submits the user's answer to the daily question.
  ///
  /// Takes the [questionId] of the question being answered and the [answer]
  /// provided by the user as required parameters.
  ///
  /// Returns a [DailyStreak] object if the operation is successful, or `null`
  /// if the submission fails.
  Future<DailyStreak?> sumbitAnswer({
    required String questionId,
    required String answer,
  });
}

/// A concrete implementation of [StreakRemoteDatasource] that interacts with
/// the remote API to perform streak-related operations.
///
/// This class uses the [BaseDataCenter] as its base and communicates with the
/// `serviceApi` to fetch and submit data.
@LazySingleton(as: StreakRemoteDatasource)
class StreakRemoteDatasourceImpl extends BaseDataCenter
    implements StreakRemoteDatasource {
  /// Fetches the current daily streak of the user from the remote API.
  ///
  /// Returns a [DailyStreak] object if the operation is successful, or `null`
  /// if no streak data is available.
  ///
  /// Throws an exception if the API call fails.
  @override
  Future<DailyStreak?> getStreak() async {
    try {
      final response = await serviceApi.getStreakBUserActivityDailyStreakGet();
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  /// Fetches the daily question for the user along with their attempt status
  /// from the remote API.
  ///
  /// Returns a [DailyQuestionWithAttempt] object if the operation is successful,
  /// or `null` if no question is available for today.
  ///
  /// Throws an exception if the API call fails.
  @override
  Future<DailyQuestionWithAttempt?> getTodayQuestion() async {
    final now = DateTime.now();
    try {
      final response =
          await serviceApi.fetchDailyQuestionBUserActivityDailyQuestionGet(
              date:
                  "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}");
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  /// Submits the user's answer to the daily question to the remote API.
  ///
  /// Takes the [questionId] of the question being answered and the [answer]
  /// provided by the user as required parameters.
  ///
  /// Returns a [DailyStreak] object if the operation is successful, or `null`
  /// if the submission fails.
  ///
  /// Throws an exception if the API call fails.
  @override
  Future<DailyStreak?> sumbitAnswer({
    required String questionId,
    required String answer,
  }) async {
    try {
      final response = await serviceApi
          .submitDailyAnswerBUserActivityDailyQuestionSubmitPost(
              answerSubmission: AnswerSubmission((s) {
        s.questionId = questionId;
        s.answer = answer;
      }));
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
