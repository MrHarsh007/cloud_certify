import 'dart:async';
import 'dart:io';
import 'failure.dart';
import 'exception.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<Either<Failure, T>> handleErrors<T>(Future<T> Function() action) async {
  try {
    final result = await action();
    return Right(result);
  } on ServerException catch (e) {
    return Left(ServerFailure(e.message));
  } on SocketException {
    return const Left(ConnectionFailure('No internet connection'));
  } on FirebaseAuthException catch (e) {
    return Left(ServerFailure(getMessageFromErrorCode(e.code, e.message)));
  } on DioException catch (e) {
    return Left(ServerFailure(e.response?.data['error'].toString() ??
        "Error occurred. Please try again."));
  } catch (e) {
    return Left(ServerFailure(e.toString()));
  }
}

// Handling errors for Stream
Stream<Either<Failure, T>> handleStreamErrors<T>(Stream<T> Function() action) {
  return action().transform(
    StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        sink.add(Right(data)); // On data, return it as success
      },
      handleError: (error, stackTrace, sink) {
        // Handle errors for stream
        if (error is ServerException) {
          sink.add(Left(ServerFailure(error.message)));
        } else if (error is SocketException) {
          sink.add(const Left(ConnectionFailure('No internet connection')));
        } else if (error is FirebaseAuthException) {
          sink.add(Left(ServerFailure(
              getMessageFromErrorCode(error.code, error.message))));
        } else if (error is DioException) {
          sink.add(Left(ServerFailure(
              error.response?.data['error'].toString() ??
                  "Error occurred. Please try again.")));
        } else {
          sink.add(Left(ServerFailure(error.toString())));
        }
      },
    ),
  );
}

String getMessageFromErrorCode(errorCode, errorMessage) {
  switch (errorCode) {
    case "invalid-credential":
      return "Invalid credential. Please try again.";
    case "email-already-exists":
      return "Email already exists. Use a different email.";
    case "invalid-email":
      return "Invalid email. Please enter a valid email.";
    case "too-many-requests":
      return "Too many requests. Try again later.";
    case "user-not-found":
      return "User not found. Please check your email.";
    case "invalid-password":
      return "Invalid password. Please try again.";
    case "email-already-in-use":
      return "Email already in use. Use a different email.";
    case "invalid-verification-code":
      return "Invalid otp try again.";
    case "credential-already-in-use":
      return "The credential is already associated with another account. Please use a different email or number log in.";

    default:
      return errorMessage;
  }
}
