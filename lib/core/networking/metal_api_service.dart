import 'package:dio/dio.dart';
import 'package:mvvm_project/core/networking/api_constants.dart';

class MetalApiService {
  final Dio dio;
  MetalApiService(this.dio);

  Future<dynamic> getGoldPrice(String metalType) async {
    try {
      final response = await dio.get(metalType);
      return response.data;
    } catch (e) {
      throw Exception('Failed to load gold details');
    }
  }

  Future<dynamic> getSilverPrice() async {
    try {
      final response = await dio.get(ApiConstants.silverEndPoint);
      return response.data;
    } catch (e) {
      throw Exception('Failed to load silver details');
    }
  }
}
