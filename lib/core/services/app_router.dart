import 'package:go_router/go_router.dart';
import 'package:swift_admin/core/utils/constance/router_path.dart';
import 'package:swift_admin/features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: RouterPath.kHomeViewRouter,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}
