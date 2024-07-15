import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:swift_admin/core/utils/constance/app_colors.dart';
import 'package:swift_admin/core/utils/constance/app_styles.dart';
import 'package:swift_admin/features/theme/presentation/managers/cubit/theme_cubit.dart';

class HomeViewSliverAppBar extends StatelessWidget {
  const HomeViewSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      sliver: SliverAppBar(
        centerTitle: true,
        title: Text(
          'Swift Admin',
          style: AppStyles.styleSemiBold30(context),
        ),
        actions: [
          BlocBuilder<ThemeCubit, ThemeCubitState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () async {
                  await BlocProvider.of<ThemeCubit>(context).appTheme(
                    themeValue: !BlocProvider.of<ThemeCubit>(context).themeMode,
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: BlocProvider.of<ThemeCubit>(context).themeMode
                        ? AppColors.kPrimaryColor
                        : Colors.amber,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    BlocProvider.of<ThemeCubit>(context).themeMode
                        ? Ionicons.sunny
                        : Ionicons.moon,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
