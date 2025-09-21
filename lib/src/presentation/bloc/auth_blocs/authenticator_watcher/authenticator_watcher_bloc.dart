import 'package:cloud_certify/src/domain/usecase/profile_usecase.dart';
import 'package:cloud_certify/src/utilities/go_router_init.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../common/constant.dart';
import '../../../../common/enum.dart';
import '../../../../helper/shared_pref_helper.dart';

part 'authenticator_watcher_event.dart';
part 'authenticator_watcher_state.dart';
part 'authenticator_watcher_bloc.freezed.dart';

@singleton
class AuthenticatorWatcherBloc
    extends Bloc<AuthenticatorWatcherEvent, AuthenticatorWatcherState> {
  AuthenticatorWatcherBloc(this._profileuse)
      : super(const AuthenticatorWatcherState(
            message: '', state: UserState.initial)) {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    on<AuthenticatorWatcherEvent>((event, emit) async {
      await event.map(
        // Event to check authentication status
        authCheckRequest: (_) async {
          emit(state.copyWith(state: UserState.loading, message: ""));

          final user = firebaseAuth.currentUser;

          // User is unauthenticated if no Firebase user is found
          if (user == null) {
            emit(state.copyWith(state: UserState.unauthenticated));
          } else {
            // Fetch user details from the profile use case
            final fetchuser = await _profileuse.fetchUserDetails();

            fetchuser.fold((l) {
              // Handle error while fetching user
              if (l.message == "User Not Found") {
                emit(state.copyWith(
                    message: 'User Not Found',
                    state: UserState.completeProfile));
              } else {
                emit(state.copyWith(
                    message: 'Something Went Wrong', state: UserState.error));
                emit(state.copyWith(state: UserState.unauthenticated));
              }
            }, (user) async {
              // Store user model in state
              emit(state.copyWith(usermodel: user));
              firebaseAnalytics.setUserProperty(
                  name: "Name", value: user?.fullName ?? "");
              firebaseAnalytics.setUserId(id: user?.uid.toString() ?? "");

              // Fetch additional user details if authenticated
              // _userWatcherBloc.add(const UserWatcherEvent.fetchUser());

              emit(state.copyWith(state: UserState.authenticated));
            });
          }
        },

        // Event to sign out the user
        signOut: (_) async {
          await firebaseAuth.signOut();
          // GoogleSignIn().signOut();

          // Remove shared preferences related to the user
          SharedPreferenceHelper().remove(IS_KYC_COMPLETED);

          emit(state.copyWith(state: UserState.unauthenticated));
          emit(state.copyWith(state: UserState.initial));
        },

        // Event to delete the user's account
        deleteAccount: (_deleteAccount value) async {
          emit(state.copyWith(
              message: "Account deletion started", state: UserState.initial));

          // Perform account deletion
          final deleteUser = await _profileuse.deleteUser();

          deleteUser.fold((l) {
            // Handle account deletion error
            emit(state.copyWith(message: l.message, state: UserState.error));
          }, (r) {
            // Handle account deletion success or failure
            if (r == true) {
              emit(state.copyWith(
                  message: "Account deleted successfully",
                  state: UserState.accountDeleted));
            } else {
              emit(state.copyWith(
                  message: "Something went wrong", state: UserState.error));
            }
          });
        },
      );
    });
  }

  // Dependencies injected into the bloc
  // final UserWatcherBloc _userWatcherBloc;
  final ProfileUseCase _profileuse;
}
