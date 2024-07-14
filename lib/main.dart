import 'package:flutter/material.dart';
import 'package:swift_admin/core/services/app_router.dart';

void main(List<String> args) {
  runApp(
    const SwiftAdmin(),
  );
}

class SwiftAdmin extends StatelessWidget {
  const SwiftAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
