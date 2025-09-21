import 'package:cloud_certify/src/common/failure.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';

/// An abstract repository that defines methods for managing and retrieving
/// daily streaks and questions in the application.
///
/// This repository serves as an interface for interacting with the underlying
/// data source (e.g., API, database) to handle operations related to daily
/// streaks and questions.
abstract class StreakRepository {
  /// Retrieves the current daily streak of the user.
  ///
  /// Returns:
  /// - A [Future] containing an [Either] with:
  ///   - [Failure]: If an error occurs while fetching the streak.
  ///   - [DailyStreak?]: The user's current daily streak, or `null` if no streak exists.
  Future<Either<Failure, DailyStreak?>> getStreak();

  /// Retrieves today's question along with the user's attempt, if any.
  ///
  /// Returns:
  /// - A [Future] containing an [Either] with:
  ///   - [Failure]: If an error occurs while fetching the question.
  ///   - [DailyQuestionWithAttempt?]: The question for today and the user's attempt, or `null` if no question exists.
  Future<Either<Failure, DailyQuestionWithAttempt?>> getTodayQuestion();

  /// Submits an answer for today's question.
  ///
  /// Parameters:
  /// - [questionId]: The unique identifier of the question being answered.
  /// - [answer]: The user's answer to the question.
  ///
  /// Returns:
  /// - A [Future] containing an [Either] with:
  ///   - [Failure]: If an error occurs while submitting the answer.
  ///   - [DailyStreak?]: The updated daily streak after submitting the answer, or `null` if the streak is not updated.
  Future<Either<Failure, DailyStreak?>> sumbitAnswer({
    required String questionId,
    required String answer,
  });
}
