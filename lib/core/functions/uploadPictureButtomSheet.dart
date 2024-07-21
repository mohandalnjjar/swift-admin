import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:swift_admin/core/utils/constance/app_styles.dart';

Future<dynamic> uploadPictureShowModalButtomSheet({
  required BuildContext context,
  required void Function()? onTapCamera,
  required void Function()? onTapGallery,
}) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 10,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  'Choose picture',
                  style: AppStyles.styleRegular19(context),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Ionicons.camera),
              title: const Text('Camera'),
              onTap: onTapCamera,
            ),
            ListTile(
              leading: const Icon(Ionicons.file_tray),
              title: const Text('Choose from gallery '),
              onTap: onTapGallery,
            ),
          ],
        ),
      );
    },
  );
}
