part of 'get_test_bloc.dart';

@freezed
class GetTestEvent with _$GetTestEvent {
  const factory GetTestEvent.initial() = _Initial;

  const factory GetTestEvent.getAllTest({
    @Default(true) bool isLoading,
    @Default(false) bool fetchMore,
    String? searchQuery,
  }) = _GetAllTestEvent;

  // Change Category
  const factory GetTestEvent.changeCategory({required String? category}) =
      _ChangeCategory;

  // Change Search Query
  const factory GetTestEvent.changeSearchQuery({required String? searchQuery}) =
      _ChangeSearchQuery;
}
