import 'package:cloud_certify/src/common/error_handler.dart';
import 'package:cloud_certify/src/common/failure.dart';
import 'package:cloud_certify/src/data/datasource/streak_remote_datasource.dart';
import 'package:cloud_certify/src/domain/repository/streak_repository.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

/// Implementation of the [StreakRepository] interface, providing methods
/// to interact with the streak-related data.
///
/// This class uses a [StreakRemoteDatasource] to fetch and submit streak
/// data from a remote source. It also handles errors using the `handleErrors`
/// utility function to ensure failures are wrapped in a [Failure] object.
@LazySingleton(as: StreakRepository)
class StreakRepositoryImpl extends StreakRepository {
  /// Creates an instance of [StreakRepositoryImpl].
  ///
  /// The [dataSource] parameter is required and provides the remote
  /// data source for streak-related operations.
  StreakRepositoryImpl(this.dataSource);

  /// The remote data source used to fetch and submit streak-related data.
  final StreakRemoteDatasource dataSource;

  /// Fetches the current daily streak.
  ///
  /// Returns a [Future] containing an [Either] with a [Failure] in case of
  /// an error, or a nullable [DailyStreak] object if the operation succeeds.
  @override
  Future<Either<Failure, DailyStreak?>> getStreak() async {
    return handleErrors(() => dataSource.getStreak());
  }

  /// Fetches the daily question along with the user's attempt, if any.
  ///
  /// Returns a [Future] containing an [Either] with a [Failure] in case of
  /// an error, or a nullable [DailyQuestionWithAttempt] object if the
  /// operation succeeds.
  @override
  Future<Either<Failure, DailyQuestionWithAttempt?>> getTodayQuestion() async {
    return handleErrors(() => dataSource.getTodayQuestion());
  }

  /// Submits an answer for the daily question.
  ///
  /// The [questionId] and [answer] parameters are required to identify the
  /// question and the user's answer, respectively.
  ///
  /// Returns a [Future] containing an [Either] with a [Failure] in case of
  /// an error, or a nullable [DailyStreak] object if the operation succeeds.
  @override
  Future<Either<Failure, DailyStreak?>> sumbitAnswer({
    required String questionId,
    required String answer,
  }) async {
    return handleErrors(() => dataSource.sumbitAnswer(
          questionId: questionId,
          answer: answer,
        ));
  }
}
