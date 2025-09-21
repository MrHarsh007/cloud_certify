part of 'resources_bloc.dart';

@freezed
class ResourcesEvent with _$ResourcesEvent {
  // Initial
  const factory ResourcesEvent.initial() = _Initial;

  // Fetch Resources
  const factory ResourcesEvent.fetchResources({
    @Default(false) bool fetchMore,
    String? searchQuery,
  }) = _FetchResources;

  // Like Resource
  const factory ResourcesEvent.likeResource({
    required String resourceId,
    required bool isLike,
    required String resourceName,
  }) = _LikeResource;

  // View Resource
  const factory ResourcesEvent.viewResource({
    required String resourceId,
    required String resourceName,
  }) = _ViewResource;

  // Filter Resources
  const factory ResourcesEvent.filterResources({
    required String filterBy,
  }) = _FilterResources;
}
