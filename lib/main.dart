import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swift_admin/core/services/app_router.dart';
import 'package:swift_admin/core/utils/app_theme_data.dart';
import 'package:swift_admin/features/theme/data/repos/theme_repo_impl.dart';
import 'package:swift_admin/features/theme/presentation/managers/cubit/theme_cubit.dart';

void main(List<String> args) {
  runApp(
    const SwiftAdmin(),
  );
}

class SwiftAdmin extends StatelessWidget {
  const SwiftAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(
            ThemeRepoImpl(),
          )..getTheme(context: context),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeCubitState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            theme: appThemeData(
              isDark: BlocProvider.of<ThemeCubit>(context).themeMode,
              context: context,
            ),
          );
        },
      ),
    );
  }
}
