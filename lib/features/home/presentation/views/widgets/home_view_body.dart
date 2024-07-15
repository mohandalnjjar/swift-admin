import 'package:flutter/material.dart';
import 'package:swift_admin/features/home/presentation/views/widgets/homve_view_sliver_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        HomeViewSliverAppBar(),
      ],
    );
  }
}
