part of 'authenticator_watcher_bloc.dart';

@freezed
class AuthenticatorWatcherState with _$AuthenticatorWatcherState {
  const factory AuthenticatorWatcherState({
    required UserState state,
    required String message,
    UserResponse? usermodel,
  }) = _AuthenticatorWatcherState;

  factory AuthenticatorWatcherState.initial() =>
      const AuthenticatorWatcherState(
        state: UserState.initial,
        message: '',
        usermodel: null,
      );
}
