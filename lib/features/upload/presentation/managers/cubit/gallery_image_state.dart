part of 'gallery_image_cubit.dart';

@immutable
sealed class GalleryImageState {}

final class GalleryImageInitial extends GalleryImageState {}

final class GalleryImageLoading extends GalleryImageState {}

final class GalleryImageSuccess extends GalleryImageState {
  final List<XFile> items;

  GalleryImageSuccess({required this.items});
}

final class GalleryImageFailed extends GalleryImageState {
  final String errorMessage;

  GalleryImageFailed({required this.errorMessage});
}
