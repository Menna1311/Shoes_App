import 'package:flutter/material.dart';
import 'package:shoes_shop/core/utils/app_routes.dart';

void main() {
  runApp(const ShoesApp());
}

class ShoesApp extends StatelessWidget {
  const ShoesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
    );
  }
}
