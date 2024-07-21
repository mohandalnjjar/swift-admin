part of 'camera_image_cubit.dart';

@immutable
sealed class CameraImageCubitState {}

final class CameraImageInitial extends CameraImageCubitState {}

final class CameraImageLoading extends CameraImageCubitState {}

final class CameraImageSuccess extends CameraImageCubitState {
  final XFile? pickedImage;

  CameraImageSuccess({required this.pickedImage});
}

final class CameraImageFailed extends CameraImageCubitState {
  final String errorMessage;

  CameraImageFailed({required this.errorMessage});
}
