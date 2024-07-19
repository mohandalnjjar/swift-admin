import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:swift_admin/core/utils/app_images.dart';
import 'package:swift_admin/core/utils/constance/app_colors.dart';
import 'package:swift_admin/core/utils/constance/app_styles.dart';
import 'package:swift_admin/features/upload/presentation/views/widgets/selected_image_item.dart';

class UploadProductForm extends StatefulWidget {
  const UploadProductForm({
    super.key,
  });

  @override
  State<UploadProductForm> createState() => _UploadProductFormState();
}

class _UploadProductFormState extends State<UploadProductForm> {
  int activeIndex = 0;
  String? drowpDownValue;
  List<String> items = [
    Assets.imagesLaptop1,
    Assets.imagesLaptop2,
    Assets.imagesNewshose2,
    Assets.imagesTshrt,
  ];
  List<String> sizes = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: Column(
        children: [
          Text(
            'Choose Product Picture',
            style: AppStyles.styleSemiBold21(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Choose a photo that represent product',
            style: AppStyles.styleGreyReg16(context),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: AppColors.kWhitePrimaryColor,
                      borderRadius: BorderRadius.circular(300),
                    ),
                    child: items.isNotEmpty
                        ? Image.asset(items[activeIndex])
                        : Center(
                            child: Image.asset(Assets.imagesCloud4),
                          ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.39,
                  top: 5,
                  child: IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      IconlyBold.image,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 13),
          Visibility(
            visible: items.isNotEmpty,
            child: SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          if (activeIndex == index) {
                            items.removeAt(activeIndex);
                            if (items.isEmpty) {
                              activeIndex = 0;
                            } else if (activeIndex >= items.length) {
                              activeIndex = items.length - 1;
                            }
                          } else {
                            activeIndex = index;
                          }
                        },
                      );
                    },
                    child: DetailedListSelectedImage(
                      isActive: activeIndex == index,
                      image: items[index],
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Next',
                  style: AppStyles.styleSemiBold16(context),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
