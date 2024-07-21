import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:swift_admin/core/utils/constance/app_colors.dart';
import 'package:swift_admin/features/theme/presentation/managers/cubit/theme_cubit.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeCubitState>(
      builder: (context, state) {
        return IconButton(
          style: IconButton.styleFrom(
            backgroundColor: BlocProvider.of<ThemeCubit>(context).themeMode
                ? AppColors.kPrimaryColor
                : Colors.amber,
          ),
          onPressed: onPressed,
          icon: const Icon(
            IconlyBold.image,
            size: 27,
            color: Colors.white,
          ),
        );
      },
    );
  }
}
