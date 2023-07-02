import 'package:auto_route/auto_route.dart';
import 'package:rms_agent/src/screens/screens.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: LoginScreen.route,
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: RegisterScreen.route,
        ),
        AutoRoute(
          page: MainDashboardRoute.page,
          path: MainDashboardScreen.route,
          children: [
            AutoRoute(path: HomeScreen.route, page: HomeRoute.page),
            AutoRoute(path: SettingsScreen.route, page: SettingsRoute.page),
          ],
        ),
      ];
}
