import 'package:cloud_certify/src/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

abstract class ImageUploadRepository {
  Future<Either<Failure, List<String>>> uploadIamge(
      List<XFile> images, String? folderName, String? docType);
}
