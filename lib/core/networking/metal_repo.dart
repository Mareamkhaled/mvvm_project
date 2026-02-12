import 'package:dartz/dartz.dart';
import 'package:mvvm_project/core/networking/metal_api_service.dart';
import 'package:mvvm_project/core/networking/metal_model.dart';

class MetalRepo {
  final MetalApiService apiService;
  MetalRepo(this.apiService);
  Future<Either<String,MetalModel>> fetchMetalPrice(String metalType) async {
    try {
      final data = await apiService.getGoldPrice(metalType);
      final goldModel = MetalModel.fromJson(data);
      return Right(goldModel);
    } catch (e) {
      return Left(e.toString());
    }
  }
}