import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:swift_admin/features/upload/data/repos/upload_repo_impl.dart';

part 'gallery_image_state.dart';

class GalleryImageCubit extends Cubit<GalleryImageState> {
  GalleryImageCubit(this.uploadRepoImpl) : super(GalleryImageInitial());
  final UploadRepoImpl uploadRepoImpl;
  Future<void> galleryImage() async {
    emit(
      GalleryImageLoading(),
    );
    var result = await uploadRepoImpl.multiImagePicker();
    result.fold(
      (failed) {
        emit(
          GalleryImageFailed(errorMessage: failed.errorMessage),
        );
      },
      (success) {
        emit(
          GalleryImageSuccess(items: success),
        );
      },
    );
  }
}
