part of 'resources_bloc.dart';

@freezed
class ResourcesState with _$ResourcesState {
  factory ResourcesState({
    required RequestState state,
    required String message,
    required String? lastDocId,
    required String? filterBy,
    required int totalCount,
    required bool hasMoreData,
    required int totalViews,
    required int totalLikes,
    required int totalResources,
    required List<CustomResource> resourceList,
    required bool isLiking,
  }) = _ResourcesState;
  factory ResourcesState.initial() => ResourcesState(
      state: RequestState.empty,
      message: "",
      lastDocId: null,
      filterBy: null,
      totalCount: 0,
      hasMoreData: true,
      totalLikes: 0,
      totalViews: 0,
      totalResources: 0,
      resourceList: [],
      isLiking: false);
}
