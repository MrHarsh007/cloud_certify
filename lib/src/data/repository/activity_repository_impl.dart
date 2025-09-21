import 'package:cloud_certify/src/common/error_handler.dart';
import 'package:cloud_certify/src/common/failure.dart';
import 'package:cloud_certify/src/data/datasource/activity_remote_datasource.dart';
import 'package:cloud_certify/src/domain/repository/activity_repository.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ActivityRepository)
class ActivityRepositoryImpl extends ActivityRepository {
  final ActivityRemoteDataSource dataSource;
  ActivityRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, Activity?>> addActivityDetail(
      {required String activity, Map<String, String>? metaData}) async {
    return handleErrors(
      () =>
          dataSource.addActivityDetail(activity: activity, metaData: metaData),
    );
  }

  @override
  Future<Either<Failure, ActivityList?>> fetchRecentActivity() async {
    return handleErrors(
      () => dataSource.fetchRecentActivity(),
    );
  }

  @override
  Future<Either<Failure, List<TestRecommendation>>>
      fetchUserPersonalizedCourses(
          {RecommendationType? type, int limite = 10}) async {
    return handleErrors(
      () => dataSource.fetchUserPersonalizedCourses(type: type, limite: limite),
    );
  }
}
