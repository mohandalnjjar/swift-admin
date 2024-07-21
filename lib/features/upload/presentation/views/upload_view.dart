import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swift_admin/features/upload/data/repos/upload_repo_impl.dart';
import 'package:swift_admin/features/upload/presentation/managers/camera_image_cubit/camera_image_cubit.dart';
import 'package:swift_admin/features/upload/presentation/managers/cubit/gallery_image_cubit.dart';
import 'package:swift_admin/features/upload/presentation/views/widgets/upload_view_body.dart';

class UploadView extends StatelessWidget {
  const UploadView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CameraImageCubit(
            UploadRepoImpl(),
          ),
        ),
        BlocProvider(
          create: (context) => GalleryImageCubit(
            UploadRepoImpl(),
          ),
        ),
      ],
      child: const Scaffold(
        body: SafeArea(
          child: UploadViewBody(),
        ),
      ),
    );
  }
}
