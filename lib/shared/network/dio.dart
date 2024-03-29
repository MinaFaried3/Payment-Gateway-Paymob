import 'package:dio/dio.dart';

class DioHelperPayment {
  static late Dio dio;

  static Future<void> init() async {
    dio = Dio(BaseOptions(
        baseUrl: "https://accept.paymob.com/api/",
        headers: {"Content-Type": "application/json"},
        receiveDataWhenStatusError: true));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    return await dio.post(
      url,
      data: data,
      queryParameters: query,
    );
  }
}
