import 'package:cloud_certify/src/domain/repository/leaderboard_repository.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';

@injectable
class LeaderboardUsecase {
  LeaderboardUsecase(this._repository);
  final LeaderboardRepository _repository;

  Future<Either<Failure, LeaderboardResponse?>> fetchLeaderboardData() async {
    return _repository.fetchLeaderboardData();
  }

  // Fetch Resources
  Future<Either<Failure, ResourceList?>> fetchResourcesData({
    String? searchQuery,
    int limit = 10,
    String? lastDocId,
    String? sortBy,
  }) async {
    return _repository.fetchResourcesData(
      searchQuery: searchQuery,
      limit: limit,
      lastDocId: lastDocId,
      sortBy: sortBy,
    );
  }

  // Like Resource
  Future<Either<Failure, void>> likeResource(
      {required String resourceId}) async {
    return _repository.likeResource(resourceId: resourceId);
  }

  // View Resource
  Future<Either<Failure, void>> viewResource(
      {required String resourceId}) async {
    return _repository.viewResource(resourceId: resourceId);
  }
}
