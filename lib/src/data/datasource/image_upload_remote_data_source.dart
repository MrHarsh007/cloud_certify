import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as dio;
import 'package:injectable/injectable.dart';
import '../../utilities/base_data_center.dart';

abstract class ImageUploadRemoteDataSource {
  Future<List<String>> uploadImage(
      List<XFile> images, String? folderName, String? docType);
}

@LazySingleton(as: ImageUploadRemoteDataSource)
class ImageUploadRemoteDataSourceImpl extends BaseDataCenter
    implements ImageUploadRemoteDataSource {
  @override
  Future<List<String>> uploadImage(
      List<XFile> images, String? folderName, String? docType) async {
    try {
      final List<dio.MultipartFile> files = [];

      for (var element in images) {
        final bytes = await element.readAsBytes();
        files.add(
          dio.MultipartFile.fromBytes(
            bytes,
            filename: element.name,
          ),
        );
      }

      var response =
          await serviceApi.uploadUserImageBManageUserUsersUploadImagePost(
        file: files.first,
      );
      debugPrint("Response while uploading image: $response");
      final List<String> responseList = [response.data?.imageUrl ?? ""];
      return responseList;
    } catch (e) {
      debugPrint("Error while uploading image: $e");
      rethrow;
    }
  }
}
