part of 'update_profile_bloc.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  factory UpdateProfileState({
    required RequestState state,
    required String message,
    required String? profileImage,
    required CertificationType? certificate,
    required XFile? image,
  }) = _UpdateProfileState;
  factory UpdateProfileState.initial() => UpdateProfileState(
        state: RequestState.empty,
        message: '',
        profileImage: null,
        certificate: null,
        image: null,
      );
}
