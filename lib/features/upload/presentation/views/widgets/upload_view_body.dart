import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_admin/features/upload/presentation/views/widgets/upload_product_form.dart';

class UploadViewBody extends StatelessWidget {
  const UploadViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(
            left: 8,
            top: 10,
          ),
          sliver: SliverAppBar(
            leading: GestureDetector(
              onTap: () => context.pop(),
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: UploadProductForm(),
        ),
      ],
    );
  }
}
