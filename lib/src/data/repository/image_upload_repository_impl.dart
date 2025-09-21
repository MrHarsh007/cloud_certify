import 'package:cloud_certify/src/common/failure.dart';
import 'package:cloud_certify/src/data/datasource/image_upload_remote_data_source.dart';
import 'package:cloud_certify/src/domain/repository/image_upload_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import '../../common/error_handler.dart';

@LazySingleton(as: ImageUploadRepository)
class ImageUploadRepositoryImpl extends ImageUploadRepository {
  ImageUploadRepositoryImpl(this.dataSource);
  final ImageUploadRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<String>>> uploadIamge(
      List<XFile> images, String? folderName, String? docType) {
    return handleErrors(
        () => dataSource.uploadImage(images, folderName, docType));
  }
}
