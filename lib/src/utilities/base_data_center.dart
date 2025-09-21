import 'package:cloud_certify_service_api/cloud_certify_service_api.dart';
import 'package:dio/dio.dart';
import 'common_api_utils/dio_interceptor.dart';

class BaseDataCenter {
  static const String baseUrl =
      "https://base-service-6070296894.us-central1.run.app/";

  DefaultApi serviceApi = CloudCertifyServiceApi(
      dio: Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(minutes: 1),
          receiveTimeout: const Duration(minutes: 1),
          sendTimeout: const Duration(minutes: 1),
        ),
      ),
      interceptors: [
        DioAuthInterceptor(),
      ]).getDefaultApi();
}
