part of 'authenticator_watcher_bloc.dart';

// Define the events for the AuthenticatorWatcherBloc using Freezed
@freezed
class AuthenticatorWatcherEvent with _$AuthenticatorWatcherEvent {
  // Event to check the authentication status of the user
  const factory AuthenticatorWatcherEvent.authCheckRequest() =
      _AuthCheckRequest;

  // Event to sign out the current user
  const factory AuthenticatorWatcherEvent.signOut() = _SignOut;

  // Event to delete the user's account
  const factory AuthenticatorWatcherEvent.deleteAccount() = _deleteAccount;
}
