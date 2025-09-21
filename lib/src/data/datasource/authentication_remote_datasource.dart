import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../../utilities/base_data_center.dart';

/// **Authentication Remote Data Source**
///
/// This class handles authentication-related operations using Firebase Authentication.
/// It is responsible for:
/// - Checking if a user exists in the system using their email.
/// - Signing in a user with email and password via Firebase.
///
/// **How it works:**
/// 1. The `AuthenticationRemoteDataSource` defines abstract methods for authentication.
/// 2. The `AuthenticationRemoteDataSourceImpl` implements these methods using Firebase.
/// 3. This class is injected using `@LazySingleton` to ensure a single instance.
/// 4. Other layers (like repository & use case) use this data source for authentication.
///
/// ---
///
/// **Steps to Integrate and Use in Bloc:**
///
/// **1️⃣ Create the Remote Data Source:**
///    - Implement the `AuthenticationRemoteDataSource` interface.
///    - Use Firebase Authentication for user authentication.
///
/// **2️⃣ Create the Repository:**
///    - Inside `data/repository/auth_repository_impl.dart`, use this data source.
///    - Implement `AuthRepository` inside `domain/repository/auth_repository.dart`.
///
/// **3️⃣ Create the Use Case:**
///    - Inside `domain/usecase/authentication_usecase.dart`.
///    - This use case will call the repository.
///
/// **4️⃣ Call the Use Case in Bloc:**
///    - Inject `AuthenticationUseCase` in the Bloc.
///    - Call `signInWithFirebase` inside the event handler.
///
/// **5️⃣ Provide the Dependencies:**
///    - Use `injectable` to inject dependencies.
///    - Call `configureDependencies()` in `main.dart`.

/// Defines authentication operations to be implemented by remote data sources.
abstract class AuthenticationRemoteDataSource {
  Future<bool> isUserExistWithEmail(String email);
  Future<String> signInWithFirebase(
      String email, String password, bool isRemeber);

  Future<UserResponse?> signUp(String email, String password, String firstName,
      String lastName, CertificationType certificationType);

  // Update user profile
  Future<UserResponse?> updateUserProfile(
      {String? email,
      String? firstName,
      String? lastName,
      CertificationType? certication,
      String? bio,
      String? image});

  // delete account
  Future<void> deleteAccount();

  // change password
  Future<void> changePassword(
      {required String oldPassword, required String newPassword});
}

/// Implements [AuthenticationRemoteDataSource] using Firebase Authentication.
@LazySingleton(as: AuthenticationRemoteDataSource)
class AuthenticationRemoteDataSourceImpl extends BaseDataCenter
    implements AuthenticationRemoteDataSource {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<bool> isUserExistWithEmail(String email) async {
    try {
      final response = await serviceApi
          .checkIfUserExistsBManageUserUsersCheckExistsPost(
              checkUserExistsRequest: CheckUserExistsRequest((s) {
        s.email = email;
      }));
      return response.data?.exists ?? false;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> signInWithFirebase(
      String email, String password, bool isRemeber) async {
    try {
      if (isRemeber) {
        await auth.setPersistence(Persistence.LOCAL);
      } else {
        await auth.setPersistence(Persistence.SESSION);
      }
      final response = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return response.user?.uid ?? "";
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserResponse?> signUp(String email, String password, String firstName,
      String lastName, CertificationType certificationType) async {
    try {
      final response = await serviceApi.createNewUserBManageUserUsersPost(
          userCreate: UserCreate((s) {
        s.certificationTarget = certificationType;
        s.email = email;
        s.firstName = firstName;
        s.lastName = lastName;
        s.password = password;
      }));
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> changePassword(
      {required String oldPassword, required String newPassword}) async {
    try {
      await serviceApi.updateUserPasswordBManageUserUsersPasswordPut(
          passwordUpdateRequest: PasswordUpdateRequest((s) {
        s.newPassword = newPassword;
      }));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      await serviceApi.deleteUserAccountBManageUserUsersDelete();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserResponse?> updateUserProfile(
      {String? email,
      String? firstName,
      String? lastName,
      CertificationType? certication,
      String? bio,
      String? image}) async {
    try {
      final response = await serviceApi.updateUserDetailsBManageUserUsersPut(
          userUpdate: UserUpdate((s) {
        s.firstName = firstName;
        s.lastName = lastName;
        s.certificationTarget = certication;
        s.bio = bio;
        s.photoUrl = image;
      }));
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
