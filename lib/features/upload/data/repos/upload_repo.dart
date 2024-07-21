import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swift_admin/core/errors/failures.dart';

abstract class UploadRepo {
  Future<Either<Failure, XFile?>> cameraPickImage();
  Future<Either<Failure, List<XFile>>> multiImagePicker();
}
