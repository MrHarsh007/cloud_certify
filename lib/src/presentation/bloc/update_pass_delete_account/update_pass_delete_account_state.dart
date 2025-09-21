part of 'update_pass_delete_account_bloc.dart';

@freezed
class UpdatePassDeleteAccountState with _$UpdatePassDeleteAccountState {
  factory UpdatePassDeleteAccountState({
    required RequestState state,
    required String message,
  }) = _UpdatePassDeleteAccountState;
  factory UpdatePassDeleteAccountState.initial() =>
      UpdatePassDeleteAccountState(
        state: RequestState.empty,
        message: '',
      );
}
