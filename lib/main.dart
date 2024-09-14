import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop/core/utils/app_routes.dart';
import 'package:shoes_shop/core/utils/service_locator.dart';
import 'package:shoes_shop/features/home/data/repos/home_repo_impl.dart';
import 'package:shoes_shop/features/home/presentation/manager/cubit/products_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const ShoesApp());
}

class ShoesApp extends StatelessWidget {
  const ShoesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductsCubit(getIt.get<HomeRepoImpl>())..fetchProducts(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
