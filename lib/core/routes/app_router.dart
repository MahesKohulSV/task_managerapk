import 'package:go_router/go_router.dart';
import '../../features/onboarding/presentation/pages/welcome_page.dart';
import '../../features/onboarding/presentation/pages/splash_page.dart';

class AppRouter {
  static const String splash = '/';
  static const String welcome = '/welcome';

  static final router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: welcome,
        builder: (context, state) => const WelcomePage(),
      ),
    ],
  );
}
