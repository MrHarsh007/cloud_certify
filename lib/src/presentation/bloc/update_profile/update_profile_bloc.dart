import 'package:cloud_certify/src/domain/usecase/authentication_usecase.dart';
import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:cloud_certify/src/presentation/bloc/imageuploader/image_uploader_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'update_profile_state.dart';
part 'update_profile_event.dart';
part 'update_profile_bloc.freezed.dart';

@singleton
class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  final AuthenticationUsecase _authenticationUsecase;
  final ImageUploaderBloc imageUploaderBloc;
  UpdateProfileBloc(this._authenticationUsecase, this.imageUploaderBloc)
      : super(UpdateProfileState.initial()) {
    on<UpdateProfileEvent>((event, emit) async {
      await event.map(
        updateProfile: (value) async {
          emit(state.copyWith(
              state: RequestState.loading, message: "Updating profile..."));
          // Check if the image is not null and upload it.
          String imageUrl = state.image != null
              ? await _uploadImage(state.image!, "profile", emit)
              : state.profileImage ?? "";
          // Check if the image upload was successful.
          if (imageUrl == "error") {
            emit(state.copyWith(
                message: "Failed to upload image", state: RequestState.error));
            return;
          }
          final result = await _authenticationUsecase.updateProfile(
            firstName: value.firstName,
            lastName: value.lastName,
            certication: state.certificate,
            bio: value.bio,
            image: imageUrl,
          );
          result.fold(
            (f) => emit(
                state.copyWith(state: RequestState.error, message: f.message)),
            (s) {
              emit(state.copyWith(
                  state: RequestState.loaded,
                  message: "Profile updated successfully"));
            },
          );
        },
        initial: (_Initial value) {
          emit(UpdateProfileState.initial());
        },
        changeImage: (_ChangeImage value) {
          emit(state.copyWith(
            state: RequestState.empty,
            image: value.image,
            profileImage: null,
          ));
        },
        changeCertificate: (_ChangeCertificate value) {
          emit(state.copyWith(
            state: RequestState.empty,
            certificate: value.certification,
          ));
        },
        updateImageUrl: (_UpdateImageUrl value) {
          emit(state.copyWith(
            state: RequestState.empty,
            profileImage: value.imageUrl,
          ));
        },
      );
    });
  }

  /// Helper method to upload an image.
  ///
  /// This method uploads the provided image to the specified folder and
  /// listens for state changes in the `ImageUploaderBloc`.
  ///
  /// Returns the uploaded image URL or "error" in case of failure.
  Future<String> _uploadImage(
      XFile image, String folder, Emitter<UpdateProfileState> emit) async {
    // Emit loading state.
    emit(state.copyWith(
        message: "Uploading image...", state: RequestState.loading));

    // Dispatch an event to the ImageUploaderBloc.
    imageUploaderBloc.add(ImageUploaderEvent.uploadImage(
      [image],
      folder,
      IMAGE_TYPE,
    ));

    // Listen for state changes in ImageUploaderBloc.
    await for (final uploaderState in imageUploaderBloc.stream) {
      if (uploaderState.state == RequestState.loading) {
        // Continue showing loading state.
        continue;
      } else if (uploaderState.state == RequestState.loaded) {
        // Handle successful upload.
        return uploaderState
            .imagepath.first; // Assuming imagepath contains the uploaded URL.
      } else if (uploaderState.state == RequestState.error) {
        // Handle upload error.
        emit(state.copyWith(
            message: uploaderState.message, state: RequestState.error));
        return "error";
      }
    }

    return "error";
  }
}
