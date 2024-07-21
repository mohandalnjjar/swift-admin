import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:swift_admin/features/upload/data/repos/upload_repo_impl.dart';

part 'camera_image_state.dart';

class CameraImageCubit extends Cubit<CameraImageCubitState> {
  CameraImageCubit(this.uploadRepoImpl) : super(CameraImageInitial());

  final UploadRepoImpl uploadRepoImpl;
  Future<void> pickImage() async {
    emit(
      CameraImageLoading(),
    );
    var result = await uploadRepoImpl.cameraPickImage();
    result.fold(
      (failed) {
        emit(
          CameraImageFailed(errorMessage: failed.errorMessage),
        );
      },
      (success) {
        emit(
          CameraImageSuccess(pickedImage: success),
        );
      },
    );
  }
}
