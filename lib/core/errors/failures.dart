abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ImageError extends Failure {
  ImageError({required super.errorMessage});
}
