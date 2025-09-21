import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import '../../common/failure.dart';

abstract class ProfileRepository {
  Future<Either<Failure, UserResponse?>> fetchUserDetails();
  Future<Either<Failure, UserResponse?>> updateProfile(UserUpdate userdetails);

  Future<Either<Failure, bool>> deleteUser();
  Future<Either<Failure, bool>> removeFCMToken();
}
