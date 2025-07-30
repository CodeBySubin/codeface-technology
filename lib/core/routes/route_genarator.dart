import 'package:codeface/features/map/features/map_screen.dart';
import 'package:codeface/features/splash/presentation/splash_screen.dart';
import 'app_routes.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.map,
        name: RouteNames.map,
        builder: (context, state) => const MapScreen(),
      ),
      GoRoute(
        path: AppRoutes.splash,
        name: RouteNames.splash,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
