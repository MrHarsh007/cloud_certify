import 'package:cloud_certify/src/domain/entity/custom_resource_model.dart';
import 'package:cloud_certify/src/domain/usecase/leaderboard_usecase.dart';
import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'resources_state.dart';
part 'resources_event.dart';
part 'resources_bloc.freezed.dart';

@singleton
class ResourcesBloc extends Bloc<ResourcesEvent, ResourcesState> {
  final LeaderboardUsecase _leaderboardUsecase;
  final RecentActivityBloc _recentActivityBloc;

  ResourcesBloc(this._leaderboardUsecase, this._recentActivityBloc)
      : super(ResourcesState.initial()) {
    on<ResourcesEvent>((event, emit) async {
      await event.map(
        initial: (event) async {
          emit(ResourcesState.initial());
        },
        fetchResources: (event) async {
          emit(state.copyWith(
              state: event.fetchMore
                  ? RequestState.updating
                  : RequestState.loading,
              message: "Fetching Resources..."));

          final result = await _leaderboardUsecase.fetchResourcesData(
            searchQuery: event.searchQuery,
            sortBy: state.filterBy,
            lastDocId: event.fetchMore ? state.lastDocId : null,
            limit: 9,
          );

          result.fold(
            (failure) {
              emit(state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ));
            },
            (resources) {
              // Map the fetched resources to CustomResource
              final List<CustomResource> customResourceList =
                  resources?.resources
                          .map((resource) => CustomResource(
                                title: resource.title,
                                description: resource.description,
                                resourceType: resource.resourceType.name,
                                fileUrl: resource.fileUrl ?? "",
                                link: resource.link ?? "",
                                certification: resource.certification ?? "",
                                thumbnail: resource.thumbnail ?? "",
                                tags: List<String>.from(
                                    resource.tags?.toList() ?? []),
                                id: resource.id,
                                views: resource.views ?? 0,
                                isLiked: resource.isLiked ?? false,
                                createdAt: resource.createdAt,
                                createdBy: resource.createdBy,
                                isApproved: resource.isApproved ?? false,
                                likes: resource.likes ?? 0,
                              ))
                          .toList() ??
                      [];

              final currentResou =
                  List<CustomResource>.from(state.resourceList);

              if (!event.fetchMore) {
                currentResou.clear();
              }

              currentResou.addAll(customResourceList);

              emit(state.copyWith(
                state: RequestState.loaded,
                message: "Resources fetched successfully",
                totalLikes: resources?.statistics.totalLikes ?? 0,
                totalViews: resources?.statistics.totalViews ?? 0,
                totalResources: resources?.statistics.totalResources ?? 0,
                lastDocId: resources?.nextCursor ?? "",
                hasMoreData: resources?.nextCursor != null,
                totalCount: resources?.resources.length ?? 0,
                resourceList: currentResou,
              ));
            },
          );
        },
        likeResource: (_LikeResource value) async {
          final List<CustomResource> updatedResources =
              state.resourceList.map((resource) {
            if (resource.id == value.resourceId) {
              return resource.copyWith(
                  isLiked: value.isLike,
                  likes: value.isLike
                      ? resource.likes + 1
                      : resource.likes == 0
                          ? 0
                          : resource.likes - 1);
            }
            return resource;
          }).toList();

          emit(state.copyWith(
            state: RequestState.empty,
            message: "Liking Resource...",
            isLiking: true,
            resourceList: updatedResources,
            totalLikes: state.totalLikes + (value.isLike ? 1 : -1),
          ));

          final response = await _leaderboardUsecase.likeResource(
              resourceId: value.resourceId);
          response.fold(
            (failure) {
              emit(state.copyWith(
                state: RequestState.error,
                message: failure.message,
                isLiking: false,
              ));
            },
            (resources) {
              emit(state.copyWith(
                state: RequestState.loaded,
                message: "Resource liked successfully",
                isLiking: false,
              ));
              _recentActivityBloc.add(
                RecentActivityEvent.addActivityDetail(
                  activity:
                      "${value.isLike ? 'Liked' : 'Unliked'} Resource: ${value.resourceName}",
                ),
              );
            },
          );
        },
        viewResource: (_ViewResource value) async {
          emit(state.copyWith(
            state: RequestState.empty,
            totalViews: state.totalViews + 1,
            message: "Viewing Resource...",
          ));
          final response = await _leaderboardUsecase.viewResource(
              resourceId: value.resourceId);
          response.fold(
            (failure) {
              emit(state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ));
            },
            (resources) {
              emit(state.copyWith(
                state: RequestState.loaded,
                message: "Resource viewed successfully",
              ));
              _recentActivityBloc.add(RecentActivityEvent.addActivityDetail(
                  activity: "Resource Viewed: ${value.resourceName}"));
            },
          );
        },
        filterResources: (_FilterResources value) {
          emit(state.copyWith(
            state: RequestState.empty,
            filterBy: value.filterBy,
          ));
          add(
            ResourcesEvent.fetchResources(
              fetchMore: false,
            ),
          );
        },
      );
    });
  }
}
