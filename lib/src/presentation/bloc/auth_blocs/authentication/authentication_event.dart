part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.checkUserExist({required String email}) =
      _CheckUserExist;
  const factory AuthenticationEvent.signIn(
      {required String email, required String password}) = _SignIn;
  const factory AuthenticationEvent.signUp(
      {required String email,
      required String fName,
      required String lName,
      required String password}) = _SignUp;
  const factory AuthenticationEvent.changeIntrestedCertificate(
      CertificationType? intrestedCertificate) = _ChangeIntrestedCertificate;
  const factory AuthenticationEvent.changeRememberMe(bool isRememberMe) =
      _ChangeRememberMe;
  const factory AuthenticationEvent.changeTermsAccepted(bool isTermsAccepted) =
      _ChangeTermsAccepted;
  const factory AuthenticationEvent.changeOnboardingType(OnboardingType type) =
      _ChangeOnboardingType;
}
