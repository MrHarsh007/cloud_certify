import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import '../../common/failure.dart';

abstract class LeaderboardRepository {
  Future<Either<Failure, LeaderboardResponse?>> fetchLeaderboardData();

  // Fetch Resources
  Future<Either<Failure, ResourceList?>> fetchResourcesData({
    String? searchQuery,
    int limit = 10,
    String? lastDocId,
    String? sortBy,
  });

  // Like Resource
  Future<Either<Failure, void>> likeResource({required String resourceId});
  // View Resource
  Future<Either<Failure, void>> viewResource({required String resourceId});
}
