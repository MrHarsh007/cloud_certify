import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DioAuthInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    Connectivity().checkConnectivity().then((value) async {
      if (value.contains(ConnectivityResult.wifi) ||
          value.contains(ConnectivityResult.mobile)) {
        String? token = "";
        if (FirebaseAuth.instance.currentUser != null) {
          final tokenResult =
              await FirebaseAuth.instance.currentUser!.getIdTokenResult();
          if (tokenResult.expirationTime!.isAfter(DateTime.now())) {
            token = await FirebaseAuth.instance.currentUser!.getIdToken(true);
          }
          options.headers['Authorization'] = 'Bearer $token';
        }
        handler.next(options);
        log("Token: $token ==>>");
      }
    });
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    //401 unAuthorized Account Access ! [Third party unAuthorized Account Access]
    //402 planUpgrade need!
    //404 Data Not exits !
    //409 Data Already exits !
    //422 Invalid Input Data !
    //426 Upgrade Required !
    //500 Something went wrong !
    if (err.response!.statusCode == 409) {
      // Get.dialog(ErrorHandlingDialog(
      //   errorTitle: "Data Already exits !",
      //   responseCode: err.response!.statusCode!,
      //   responseMessage: err.response!.data['error'],
      // ));
    } else if (err.response!.statusCode == 422) {
      // Get.dialog(
      //     ErrorHandlingDialog(
      //       errorTitle: "Invalid Input Data !",
      //       responseCode: err.response!.statusCode!,
      //       responseMessage: err.response!.data['error'],
      //     ),
      //     barrierDismissible: true);
    } else if (err.response!.statusCode == 401) {
      // Get.dialog(ErrorHandlingDialog(
      //   errorTitle: "To perform this action you need to login.",
      //   responseCode: err.response!.statusCode!,
      //   responseMessage: err.response!.data['error'],
      // ));
    } else if (err.response!.statusCode == 402) {
      // Get.dialog(ErrorHandlingDialog(
      //   errorTitle: "Need to upgrade plan",
      //   responseCode: err.response!.statusCode!,
      //   responseMessage: err.response!.data['error'],
      // ));
    } else if (err.response!.statusCode != 200 &&
        err.response!.statusCode != 404) {
      // Get.dialog(ErrorHandlingDialog(
      //   errorTitle: "Something went wrong!",
      //   responseCode: err.response!.statusCode!,
      //   responseMessage: err.response!.data['error'],
      // ));
    }
  }
}
