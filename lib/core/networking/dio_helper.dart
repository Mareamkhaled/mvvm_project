import 'package:dio/dio.dart';
import 'package:mvvm_project/core/networking/api_constants.dart';

class DioHelper {
  DioHelper._();
  static late Dio dio;

  static Dio getDio() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20),
        headers: {'Content-Type': 'application/json','User-Agent':"Mozilla/5.0"},
      ),
    );
    return dio;
  }
}
