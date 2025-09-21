import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dartz/dartz.dart';
import '../../common/failure.dart';

/// **Authentication Repository (Abstract)**
///
/// This repository defines authentication operations at the domain level.
/// It is implemented by `AuthRepositoryImpl` in the data layer.
///
/// **Responsibilities:**
/// - Acts as an interface between the domain and data layers.
/// - Returns `Either<Failure, T>` to handle success and failure cases.
/// - Ensures separation of concerns by abstracting authentication logic.

/// **Defines authentication methods for implementation in the data layer.**
abstract class AuthRepository {
  /// Checks if a user exists with the given email.
  Future<Either<Failure, bool>> isUserExistWithEmail(String email);

  /// Signs in a user using Firebase and returns the user ID.
  Future<Either<Failure, String>> signInWithFirebase(
      String email, String password, bool isRemeber);

  /// Signs up a new user with the given details and returns the user response.
  Future<Either<Failure, UserResponse?>> signUp(String email, String password,
      String firstName, String lastName, CertificationType certificationType);

  /// Updates the user's profile with the given details and returns the user response.
  Future<Either<Failure, UserResponse?>> updateProfile(
      {String? email,
      String? firstName,
      String? lastName,
      CertificationType? certication,
      String? bio,
      String? image});

  // delete account
  Future<Either<Failure, void>> deleteAccount();

  // change password
  Future<Either<Failure, void>> changePassword(
      {required String oldPassword, required String newPassword});
}
