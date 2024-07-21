import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swift_admin/core/errors/failures.dart';
import 'package:swift_admin/features/upload/data/repos/upload_repo.dart';

class UploadRepoImpl extends UploadRepo {
  final picker = ImagePicker();

  @override
  Future<Either<Failure, XFile?>> cameraPickImage() async {
    try {
      final XFile? pickedImage =
          await picker.pickImage(source: ImageSource.camera);
      return right(pickedImage);
    } catch (e) {
      return left(
        ImageError(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<XFile>>> multiImagePicker() async {
    try {
      final List<XFile> pickedImages = await picker.pickMultiImage();
      return right(pickedImages);
    } on Exception catch (e) {
      return left(
        ImageError(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
