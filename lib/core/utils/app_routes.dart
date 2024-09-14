import 'package:go_router/go_router.dart';
import 'package:shoes_shop/features/home/presentation/views/home_view.dart';

class AppRoutes {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
