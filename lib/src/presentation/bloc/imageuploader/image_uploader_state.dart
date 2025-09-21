part of 'image_uploader_bloc.dart';

@freezed
class ImageUploaderState with _$ImageUploaderState {
  const factory ImageUploaderState({
    required RequestState state,
    required String message,
    required List<String> imagepath,
  }) = _ImageUploaderState;

  factory ImageUploaderState.initial() => const ImageUploaderState(
        state: RequestState.empty,
        message: '',
        imagepath: [],
      );
}
