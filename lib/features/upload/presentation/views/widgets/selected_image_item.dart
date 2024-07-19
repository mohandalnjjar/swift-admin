import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:swift_admin/core/utils/constance/app_colors.dart';

class DetailedListSelectedImage extends StatelessWidget {
  const DetailedListSelectedImage(
      {super.key, required this.isActive, required this.image});
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        // padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(
          right: 8,
          top: 8,
          bottom: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: AppColors.kWhitePrimaryColor,
          border: isActive
              ? Border.all(
                  color: AppColors.kPrimaryColor,
                  width: 2.0,
                )
              : null,
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
        child: isActive
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              )
            : null,
      ),
    );
  }
}
