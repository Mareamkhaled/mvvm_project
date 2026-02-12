import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_project/core/networking/metal_repo.dart';

import '../networking/metal_model.dart';

part 'metal_state.dart';

class MetalCubit extends Cubit<MetalState> {
  MetalCubit(this.metalRepo) : super(MetalInitial());
  MetalRepo metalRepo;

  void fetchGoldPrice(String metalType) async {
    emit(MetalLoading());

    final goldDetails = await metalRepo.fetchMetalPrice(metalType);
    goldDetails.fold(
      (error) {
        emit(MetalFailure(error));
      },
      (goldModel) {
        emit(MetalSuccess(metalResponse: goldModel));
      },
    );
  }
}
