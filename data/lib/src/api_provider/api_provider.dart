import 'package:dio/dio.dart';

abstract class ApiProvider {
  Future<Response> login(
    Map<String, dynamic> data,
  );
}
