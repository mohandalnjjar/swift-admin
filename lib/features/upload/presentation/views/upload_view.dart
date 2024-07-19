import 'package:flutter/material.dart';
import 'package:swift_admin/features/upload/presentation/views/widgets/upload_view_body.dart';

class UploadView extends StatelessWidget {
  const UploadView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: UploadViewBody(),
      ),
    );
  }
}
