import 'package:cloud_certify/src/common/constant.dart';
import 'package:cloud_certify/src/presentation/bloc/recent_activity/recent_activity_bloc.dart';
import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../common/enum.dart';
import '../../../../domain/usecase/authentication_usecase.dart';
part 'authentication_state.dart';
part 'authentication_event.dart';
part 'authentication_bloc.freezed.dart';

@singleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final RecentActivityBloc _recentActivityBloc;
  AuthenticationBloc(this.authenticationUsecase, this._recentActivityBloc)
      : super(AuthenticationState.initial()) {
    on<AuthenticationEvent>(
      (event, emit) async {
        await event.map(checkUserExist: (v) async {
          emit(state.copyWith(
              state: AuthFlow.loading,
              message: "Admin Exist or Not Checking...."));
          final response =
              await authenticationUsecase.isUserExistWithEmail(v.email);
          response.fold((l) {
            emit(state.copyWith(state: AuthFlow.error, message: l.message));
          }, (r) {
            if (r == true) {
              emit(state.copyWith(
                  state: AuthFlow.userExist, message: "User Exist"));
              // add(const AuthenticationEvent.signIn());
            } else {
              emit(state.copyWith(
                  state: AuthFlow.userNotExist, message: "User Not Exist"));
            }
          });
        }, signIn: (v) async {
          emit(state.copyWith(
              state: AuthFlow.loading, message: "Firebase SignIn Started...."));
          final response = await authenticationUsecase.signInWithFirebase(
              v.email, v.password, state.isRememberMe);
          response.fold(
              (l) => emit(
                  state.copyWith(state: AuthFlow.error, message: l.message)),
              (r) {
            _recentActivityBloc.add(const RecentActivityEvent.addActivityDetail(
                activity: ACCOUNT_LOGIN_ACTIVITY));
            emit(state.copyWith(
                state: AuthFlow.signIn, message: "User Signed In"));
          });
        }, signUp: (_SignUp value) async {
          emit(state.copyWith(
              state: AuthFlow.loading, message: "Creating User...."));
          final response = await authenticationUsecase.signUp(
              value.email,
              value.password,
              value.fName,
              value.lName,
              state.intrestedCertificate ?? CertificationType.other);
          response.fold(
              (l) => emit(
                  state.copyWith(state: AuthFlow.error, message: l.message)),
              (r) {
            _recentActivityBloc.add(const RecentActivityEvent.addActivityDetail(
                activity: ACCOUNT_CREATED_ACTIVITY));
            emit(state.copyWith(
                state: AuthFlow.createAccount, message: "User Signed Up"));
          });
        }, changeIntrestedCertificate: (_ChangeIntrestedCertificate value) {
          emit(state.copyWith(
              state: AuthFlow.initial,
              intrestedCertificate: value.intrestedCertificate));
        }, changeRememberMe: (_ChangeRememberMe value) {
          emit(state.copyWith(
              state: AuthFlow.initial, isRememberMe: value.isRememberMe));
        }, changeTermsAccepted: (_ChangeTermsAccepted value) {
          emit(state.copyWith(
              state: AuthFlow.initial, isTermsAccepted: value.isTermsAccepted));
        }, changeOnboardingType: (_ChangeOnboardingType value) {
          emit(state.copyWith(
              state: AuthFlow.initial, onboardingType: value.type));
        });
      },
    );
  }
  final AuthenticationUsecase authenticationUsecase;
}
