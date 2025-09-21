import 'package:cloud_certify/src/common/failure.dart';
import 'package:cloud_certify/src/domain/repository/streak_repository.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

/// A use case class that provides methods to interact with the streak-related
/// functionalities in the application.
///
/// This class acts as an intermediary between the UI layer and the repository
/// layer, encapsulating the business logic for streak-related operations.
@injectable
class StreakUsecase {
  final StreakRepository _streakRepository;

  /// Creates an instance of [StreakUsecase] with the given [StreakRepository].
  ///
  /// The [StreakRepository] is used to perform the actual data operations
  /// related to streaks.
  StreakUsecase(this._streakRepository);

  /// Fetches the current daily streak.
  ///
  /// Returns an [Either] containing a [Failure] in case of an error or a
  /// [DailyStreak?] object representing the current streak.
  Future<Either<Failure, DailyStreak?>> getStreak() async {
    return _streakRepository.getStreak();
  }

  /// Fetches the question for today along with the user's attempt, if any.
  ///
  /// Returns an [Either] containing a [Failure] in case of an error or a
  /// [DailyQuestionWithAttempt?] object representing today's question and
  /// the user's attempt.
  Future<Either<Failure, DailyQuestionWithAttempt?>> getTodayQuestion() async {
    return _streakRepository.getTodayQuestion();
  }

  /// Submits an answer for the given question ID.
  ///
  /// [questionId] is the unique identifier of the question.
  /// [answer] is the user's answer to the question.
  ///
  /// Returns an [Either] containing a [Failure] in case of an error or a
  /// [DailyStreak?] object representing the updated streak after submitting
  /// the answer.
  Future<Either<Failure, DailyStreak?>> submitAnswer({
    required String questionId,
    required String answer,
  }) async {
    return _streakRepository.sumbitAnswer(
      questionId: questionId,
      answer: answer,
    );
  }
}
