import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';
import '../repository/auth_repository.dart';

/// **Authentication Use Case**
///
/// This class acts as an intermediary between the repository and the Bloc/UI layer.
/// - Calls methods from [AuthRepository].
/// - Ensures that authentication logic is separate from UI components.
///
/// **Responsibilities:**
/// - Provides authentication-related business logic.
/// - Calls repository methods to fetch data.
/// - Returns `Either<Failure, T>` to handle success and failure cases.
/// - Uses dependency injection (`@injectable`) for testability.

/// **Handles authentication-related use cases.**
@injectable
class AuthenticationUsecase {
  AuthenticationUsecase(this._repository);
  final AuthRepository _repository;

  /// Checks if a user exists with the given email.
  Future<Either<Failure, bool>> isUserExistWithEmail(String email) async {
    return _repository.isUserExistWithEmail(email);
  }

  /// Signs in a user using Firebase and returns the user ID.
  Future<Either<Failure, String>> signInWithFirebase(
      String email, String password, bool isRemeber) async {
    return _repository.signInWithFirebase(email, password, isRemeber);
  }

  /// Signs up a new user with the given details and returns the user response.
  Future<Either<Failure, UserResponse?>> signUp(
      String email,
      String password,
      String firstName,
      String lastName,
      CertificationType certificationType) async {
    return _repository.signUp(
        email, password, firstName, lastName, certificationType);
  }

  /// Updates the user's profile with the given details and returns the user response.
  Future<Either<Failure, UserResponse?>> updateProfile(
      {String? email,
      String? firstName,
      String? lastName,
      CertificationType? certication,
      String? bio,
      String? image}) async {
    return _repository.updateProfile(
        email: email,
        firstName: firstName,
        lastName: lastName,
        certication: certication,
        bio: bio,
        image: image);
  }

  /// Deletes the user's account.
  Future<Either<Failure, void>> deleteAccount() async {
    return _repository.deleteAccount();
  }

  /// Changes the user's password.
  Future<Either<Failure, void>> changePassword(
      {required String oldPassword, required String newPassword}) async {
    return _repository.changePassword(
        oldPassword: oldPassword, newPassword: newPassword);
  }
}
