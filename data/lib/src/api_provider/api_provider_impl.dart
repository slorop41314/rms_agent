import 'package:data/src/api_provider/api_interceptor.dart';
import 'package:data/src/api_provider/api_provider.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:utilities/utilities.dart';

@Singleton(as: ApiProvider)
class ApiProviderImpl implements ApiProvider {
  final ApiInterceptor _apiInterceptor;
  final Dio _dio = Dio(options);

  ApiProviderImpl(
    this._apiInterceptor,
  ) {
    _dio.interceptors.add(this._apiInterceptor);
  }

  static BaseOptions options = BaseOptions(
    baseUrl: "${AppConstant.baseUrl}/api",
    contentType: "application/json",
    followRedirects: false,
    responseType: ResponseType.plain,
    validateStatus: (status) {
      return status! <= 400;
    },
  );

  @override
  Future<Response> login(Map<String, dynamic> data) {
    return _dio.post(
      "/v1/auth/login",
      data: data,
    );
  }
}
