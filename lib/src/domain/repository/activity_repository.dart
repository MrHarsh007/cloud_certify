import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import '../../common/failure.dart';

abstract class ActivityRepository {
  /// Adds a new activity detail for the user.
  Future<Either<Failure, Activity?>> addActivityDetail(
      {required String activity, Map<String, String>? metaData});

  /// Fetches the recent activities of the user.
  Future<Either<Failure, ActivityList?>> fetchRecentActivity();

  /// Fetches the personalized courses for the user based on the given type and limit.
  Future<Either<Failure, List<TestRecommendation>>>
      fetchUserPersonalizedCourses({RecommendationType? type, int limite = 10});
}
