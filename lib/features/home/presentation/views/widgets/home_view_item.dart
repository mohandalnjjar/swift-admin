import 'package:flutter/material.dart';
import 'package:swift_admin/core/utils/constance/app_colors.dart';
import 'package:swift_admin/core/utils/constance/app_styles.dart';
import 'package:swift_admin/features/home/data/models/home_item_model.dart';

class HomeViewItem extends StatelessWidget {
  const HomeViewItem({
    super.key,
    required this.homeItemModel,
  });
  final HomeItemModel homeItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: AppColors.kWhitePrimaryColor,
      ),
      child: Center(
        child: Text(
          homeItemModel.title,
          style: AppStyles.styleSemiBold19(context),
        ),
      ),
    );
  }
}
