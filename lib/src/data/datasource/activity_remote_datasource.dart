import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:built_value/json_object.dart';

import '../../utilities/base_data_center.dart';

abstract class ActivityRemoteDataSource {
  /// Adds a new activity detail for the user.
  Future<Activity?> addActivityDetail(
      {required String activity, Map<String, String>? metaData});

  /// Fetches the recent activities of the user.
  Future<ActivityList?> fetchRecentActivity();

  // Fetch Course List [Reccomendation, Popular, New, In-Progress]
  Future<List<TestRecommendation>> fetchUserPersonalizedCourses(
      {RecommendationType? type, int limite = 10});
}

@LazySingleton(as: ActivityRemoteDataSource)
class ActivityRemoteDataSourceImpl extends BaseDataCenter
    implements ActivityRemoteDataSource {
  @override
  Future<Activity?> addActivityDetail(
      {required String activity, Map<String, String>? metaData}) async {
    try {
      final response = await serviceApi
          .addNewActivityBUserActivityActivitiesPost(
              addActivityRequest: AddActivityRequest((s) {
        s.activity = activity;
        if (metaData != null) {
          s.metadata = ListBuilder([JsonObject(metaData)]);
        }
      }));
      debugPrint("Activity added successfully: ${response.data?.activity}");
      return response.data;
    } catch (e) {
      debugPrint("Error adding activity: $e");
      rethrow;
    }
  }

  @override
  Future<ActivityList?> fetchRecentActivity() async {
    try {
      final response =
          await serviceApi.getUserActivitiesBUserActivityActivitiesGet();
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<TestRecommendation>> fetchUserPersonalizedCourses(
      {RecommendationType? type, int limite = 10}) async {
    try {
      final response =
          await serviceApi.getRecommendationsBRecommendationRecommendationsGet(
              recommendationType: type, limit: limite);
      return response.data?.recommendations.toList() ?? [];
    } catch (e) {
      rethrow;
    }
  }
}
