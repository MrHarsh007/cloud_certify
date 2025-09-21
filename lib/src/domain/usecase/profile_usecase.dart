import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';
import '../repository/profile_repository.dart';

@injectable
class ProfileUseCase {
  ProfileUseCase(this._repository);
  final ProfileRepository _repository;

  Future<Either<Failure, UserResponse?>> fetchUserDetails() async {
    return _repository.fetchUserDetails();
  }

  Future<Either<Failure, UserResponse?>> updateUserDetails(
      UserUpdate userdetails) async {
    return _repository.updateProfile(userdetails);
  }

  Future<Either<Failure, bool>> deleteUser() async {
    return _repository.deleteUser();
  }

  Future<Either<Failure, bool>> removeFCMToken() async {
    return _repository.removeFCMToken();
  }
}
