part of 'metal_cubit.dart';

@immutable
abstract class MetalState {}

class MetalInitial extends MetalState {}

class MetalLoading extends MetalState {}

class MetalSuccess extends MetalState {
  final MetalModel metalResponse;
  MetalSuccess({required this.metalResponse});
}

class MetalFailure extends MetalState {
  final String error;
  MetalFailure(this.error);
}
