import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';
import '../repository/activity_repository.dart';

@injectable
class ActivityUsecase {
  ActivityUsecase(this._repository);
  final ActivityRepository _repository;

  /// Adds a new activity detail for the user.
  Future<Either<Failure, Activity?>> addActivityDetail(
      {required String activity, Map<String, String>? metaData}) async {
    return _repository.addActivityDetail(activity: activity);
  }

  /// Fetches the recent activities of the user.
  Future<Either<Failure, ActivityList?>> fetchRecentActivity() async {
    return _repository.fetchRecentActivity();
  }

  /// Fetches the personalized courses for the user based on the given type and limit.
  Future<Either<Failure, List<TestRecommendation>>>
      fetchUserPersonalizedCourses(
          {RecommendationType? type, int limite = 10}) async {
    return _repository.fetchUserPersonalizedCourses(type: type, limite: limite);
  }
}
