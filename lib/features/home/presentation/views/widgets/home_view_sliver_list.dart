import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_admin/core/utils/constance/router_path.dart';
import 'package:swift_admin/features/home/data/models/home_item_model.dart';
import 'package:swift_admin/features/home/presentation/views/widgets/home_view_item.dart';

class HomeViewSliverList extends StatelessWidget {
  const HomeViewSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<HomeItemModel> items = [
      HomeItemModel(
        onTap: () {
          GoRouter.of(context).push(RouterPath.kUploadView);
        },
        title: 'New Product',
      ),
    ];
    return SliverGrid.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: items[index].onTap,
            child: HomeViewItem(
              homeItemModel: items[index],
            ),
          ),
        );
      },
    );
  }
}
