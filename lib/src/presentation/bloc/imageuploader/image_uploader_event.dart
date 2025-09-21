part of 'image_uploader_bloc.dart';

@freezed
class ImageUploaderEvent with _$ImageUploaderEvent {
  const factory ImageUploaderEvent.uploadImage(
    List<XFile> images,
    String? folderName,
    String? docType,
  ) = _UploadImage;
}
