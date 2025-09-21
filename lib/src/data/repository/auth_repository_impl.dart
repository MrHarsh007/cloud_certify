import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/error_handler.dart';
import '../../common/failure.dart';
import '../../domain/repository/auth_repository.dart';
import '../datasource/authentication_remote_datasource.dart';

/// **Authentication Repository Implementation**
///
/// This class acts as a bridge between the **data source** and the **domain layer**.
/// - Calls methods from [AuthenticationRemoteDataSource].
/// - Uses `handleErrors` to wrap API calls in error handling.
/// - Returns `Either<Failure, T>` to handle success and failure cases properly.
///
/// **Implements [AuthRepository] using a remote data source.**
@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this.dataSource);
  final AuthenticationRemoteDataSource dataSource;

  @override
  Future<Either<Failure, bool>> isUserExistWithEmail(String email) {
    // Calls remote data source and handles errors
    return handleErrors(() => dataSource.isUserExistWithEmail(email));
  }

  @override
  Future<Either<Failure, String>> signInWithFirebase(
      String email, String password, bool isRemeber) {
    // Calls remote data source and handles errors
    return handleErrors(
        () => dataSource.signInWithFirebase(email, password, isRemeber));
  }

  @override
  Future<Either<Failure, UserResponse?>> signUp(String email, String password,
      String firstName, String lastName, CertificationType certificationType) {
    // Calls remote data source and handles errors
    return handleErrors(() => dataSource.signUp(
        email, password, firstName, lastName, certificationType));
  }

// Upadate profile
  @override
  Future<Either<Failure, UserResponse?>> updateProfile(
      {String? email,
      String? firstName,
      String? lastName,
      CertificationType? certication,
      String? bio,
      String? image}) {
    // Calls remote data source and handles errors
    return handleErrors(() => dataSource.updateUserProfile(
        email: email,
        firstName: firstName,
        lastName: lastName,
        certication: certication,
        bio: bio,
        image: image));
  }

  @override
  Future<Either<Failure, void>> deleteAccount() {
    // Calls remote data source and handles errors
    return handleErrors(() => dataSource.deleteAccount());
  }

  @override
  Future<Either<Failure, void>> changePassword(
      {required String oldPassword, required String newPassword}) {
    // Calls remote data source and handles errors
    return handleErrors(() => dataSource.changePassword(
        oldPassword: oldPassword, newPassword: newPassword));
  }
}
