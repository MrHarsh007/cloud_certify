import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../common/error_handler.dart';
import '../../common/failure.dart';
import '../../domain/repository/profile_repository.dart';
import '../datasource/profile_remote_datasource.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl(this.dataSource);
  final ProfileRemoteDataSource dataSource;

  @override
  Future<Either<Failure, UserResponse?>> fetchUserDetails() async {
    return handleErrors(() => dataSource.fetchUserDetails());
  }

  @override
  Future<Either<Failure, UserResponse?>> updateProfile(UserUpdate userdetails) {
    return handleErrors(() => dataSource.updateProfile(userdetails));
  }

  @override
  Future<Either<Failure, bool>> deleteUser() {
    return handleErrors(() => dataSource.deleteAccount());
  }

  @override
  Future<Either<Failure, bool>> removeFCMToken() {
    return handleErrors(() => dataSource.removeFCMToken());
  }
}
