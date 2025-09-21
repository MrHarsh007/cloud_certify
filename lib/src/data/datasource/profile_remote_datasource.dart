import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:injectable/injectable.dart';

import '../../utilities/base_data_center.dart';

abstract class ProfileRemoteDataSource {
  Future<UserResponse?> fetchUserDetails();

  Future<UserResponse?> updateProfile(UserUpdate userdetails);

  Future<bool> deleteAccount();

  Future<bool> removeFCMToken();
}

@LazySingleton(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImpl extends BaseDataCenter
    implements ProfileRemoteDataSource {
  @override
  Future<UserResponse?> fetchUserDetails() async {
    try {
      var response =
          await serviceApi.getCurrentUserDetailsBManageUserUsersMeGet();
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserResponse?> updateProfile(UserUpdate userdetails) async {
    try {
      final data = await serviceApi.updateUserDetailsBManageUserUsersPut(
          userUpdate: userdetails);
      return data.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> deleteAccount() async {
    try {
      final response =
          await serviceApi.deleteUserAccountBManageUserUsersDelete();
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> removeFCMToken() async {
    // try {
    //   final response =
    //       await serviceApi.removeFcmTokenRouteBOtherFcmTokenDelete();
    //   if (response.statusCode == 200) {
    //     return true;
    //   } else {
    //     return false;
    //   }
    // } catch (e) {
    //   rethrow;
    // }
    return true; // Mocked response
  }
}
