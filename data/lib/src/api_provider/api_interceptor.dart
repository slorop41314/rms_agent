import 'dart:convert';

import 'package:data/src/cache/secure_storage_manager.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiInterceptor extends Interceptor {
  late SecureStorageManager secureStorageManager;

  ApiInterceptor({
    required this.secureStorageManager,
  });

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // PrintUtils.print(
    //   "Request path: ${options.baseUrl}${options.path} \nQueryParameters: ${options.queryParameters}",
    // );
    // if (options.data != null && options.data is! FormData) {
    //   PrintUtils.print(
    //     "Body: ${jsonEncode(options.data)}, path: ${options.path}",
    //   );
    // }
    final accessToken = await secureStorageManager.getString(
      SecureStorageManager.keyAccessToken,
    );
    options.headers.addAll({
      "Accept": "application/json",
    });
    if (accessToken != null) {
      options.headers.addAll({
        "Authorization": "Bearer $accessToken",
      });
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final _responseData = response.data;
    if (_responseData is String) {
      response.data = jsonDecode(_responseData);
    }
    return handler.next(response);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 403 || err.response?.statusCode == 401) {
      // TODO: implement refresh token
      handler.next(err);
    } else {
      handler.next(err);
    }
  }
}
