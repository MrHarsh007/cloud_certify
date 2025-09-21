import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:injectable/injectable.dart';

import '../../utilities/base_data_center.dart';

abstract class LeaderboardRemoteDatasource {
  Future<LeaderboardResponse?> fetchLeaderboardData();

  // Fetch Resources
  Future<ResourceList?> fetchResourcesData({
    String? searchQuery,
    int limit = 10,
    String? lastDocId,
    String? sortBy,
  });

  // Like Resource
  Future<void> likeResource({required String resourceId});

  // View Resource
  Future<void> viewResource({required String resourceId});
}

@LazySingleton(as: LeaderboardRemoteDatasource)
class LeaderboardRemoteDatasourceImpl extends BaseDataCenter
    implements LeaderboardRemoteDatasource {
  @override
  Future<LeaderboardResponse?> fetchLeaderboardData() async {
    try {
      var response = await serviceApi.leaderboardBLeaderboardLeaderboardGet();
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ResourceList?> fetchResourcesData(
      {String? searchQuery,
      int limit = 10,
      String? lastDocId,
      String? sortBy}) async {
    try {
      String? filterBy;
      final sortByy = sortBy?.camelCase ?? "";
      if (sortByy == "mostLiked") {
        filterBy = "likes";
      } else if (sortByy == "mostPopular") {
        filterBy = "views";
      } else if (sortByy.isEmpty || sortByy == "all") {
        filterBy = null;
      }

      var response =
          await serviceApi.listResourcesEndpointBResourcesResourcesGet(
              search: searchQuery,
              cursor: lastDocId,
              limit: limit,
              sortBy: filterBy);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> likeResource({required String resourceId}) async {
    try {
      await serviceApi.toggleLikeResourceBResourcesResourcesToggleLikePost(
          resourceId: resourceId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> viewResource({required String resourceId}) async {
    try {
      await serviceApi
          .incrementViewResourceBResourcesResourcesIncrementViewPost(
              resourceId: resourceId);
    } catch (e) {
      rethrow;
    }
  }
}
