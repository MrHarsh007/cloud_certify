part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required AuthFlow state,
    required String message,
    required CertificationType? intrestedCertificate,
    required bool isRememberMe,
    required bool isTermsAccepted,
    required OnboardingType onboardingType,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => const AuthenticationState(
        state: AuthFlow.initial,
        message: '',
        intrestedCertificate: null,
        isRememberMe: false,
        isTermsAccepted: false,
        onboardingType: OnboardingType.signIn,
      );
}
