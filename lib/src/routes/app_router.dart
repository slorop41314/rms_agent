import 'package:auto_route/auto_route.dart';
import 'package:rms_agent/src/screens/screens.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: MainDashboardRoute.page,
        ),
      ];
}
