import 'package:cloud_certify/src/data/datasource/leaderboard_remote_datasource.dart';
import 'package:cloud_certify/src/domain/repository/leaderboard_repository.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../common/error_handler.dart';
import '../../common/failure.dart';

@LazySingleton(as: LeaderboardRepository)
class LeaderboardRepositoryImpl extends LeaderboardRepository {
  LeaderboardRepositoryImpl(this.dataSource);
  final LeaderboardRemoteDatasource dataSource;

  @override
  Future<Either<Failure, LeaderboardResponse?>> fetchLeaderboardData() {
    return handleErrors(() => dataSource.fetchLeaderboardData());
  }

  @override
  Future<Either<Failure, ResourceList?>> fetchResourcesData({
    String? searchQuery,
    int limit = 10,
    String? lastDocId,
    String? sortBy,
  }) {
    return handleErrors(() => dataSource.fetchResourcesData(
          searchQuery: searchQuery,
          limit: limit,
          lastDocId: lastDocId,
          sortBy: sortBy,
        ));
  }

  @override
  Future<Either<Failure, void>> likeResource({required String resourceId}) {
    return handleErrors(() => dataSource.likeResource(resourceId: resourceId));
  }

  @override
  Future<Either<Failure, void>> viewResource({required String resourceId}) {
    return handleErrors(() => dataSource.viewResource(resourceId: resourceId));
  }
}
