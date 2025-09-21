import 'package:cloud_certify/src/domain/repository/image_upload_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../common/failure.dart';

@injectable
class ImageUploader {
  ImageUploader(this._repository);
  final ImageUploadRepository _repository;

  Future<Either<Failure, List<String>>> execute(
      List<XFile> images, String? folderName, String? docType) async {
    return _repository.uploadIamge(images, folderName, docType);
  }
}
