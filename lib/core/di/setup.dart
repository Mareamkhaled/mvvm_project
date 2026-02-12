import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_project/core/networking/metal_repo.dart';

import '../cubit/metal_cubit.dart';
import '../networking/dio_helper.dart';
import '../networking/metal_api_service.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  // Register DioHelper
  getIt.registerLazySingleton<Dio>(() => DioHelper.getDio());

  // Register MetalApiService
  getIt.registerLazySingleton<MetalApiService>(() => MetalApiService(getIt()));

  //Register goldRepo
  getIt.registerLazySingleton<MetalRepo>(() => MetalRepo(getIt()));

  // Register MetalCubit
  getIt.registerFactory<MetalCubit>(() => MetalCubit(getIt()));
}
