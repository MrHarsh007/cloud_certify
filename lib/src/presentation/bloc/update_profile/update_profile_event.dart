part of 'update_profile_bloc.dart';

@freezed
class UpdateProfileEvent with _$UpdateProfileEvent {
  // initial
  const factory UpdateProfileEvent.initial() = _Initial;

  // change image
  const factory UpdateProfileEvent.changeImage(XFile? image) = _ChangeImage;

  // change certificate
  const factory UpdateProfileEvent.changeCertificate(
      CertificationType? certification) = _ChangeCertificate;

  // update profile
  const factory UpdateProfileEvent.updateProfile(
      {required String firstName,
      required String lastName,
      required String bio}) = _UpdateProfile;

  // update image url
  const factory UpdateProfileEvent.updateImageUrl(String? imageUrl) =
      _UpdateImageUrl;
}
