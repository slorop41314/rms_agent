import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rms_agent/src/components/shared/shared.dart';
import 'package:rms_agent/src/routes/app_router.dart';
import 'package:utilities/utilities.dart';

@RoutePage()
class MainDashboardScreen extends StatefulWidget {
  static const route = '/dashboard';
  const MainDashboardScreen({super.key});

  @override
  State<MainDashboardScreen> createState() => _MainDashboardScreenState();
}

class _MainDashboardScreenState extends State<MainDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // list of your tab routes
      routes: const [
        HomeRoute(),
        SettingsRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        // add animation to our selected-tab page
        return FadeTransition(opacity: animation, child: child);
      },
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: CustomColors.primary,
            currentIndex: tabsRouter.activeIndex,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.audio_file),
                label: t.menu.home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.videocam_off),
                label: t.menu.settings,
              ),
            ],
            onTap: (index) {
              // change current tab
              tabsRouter.setActiveIndex(index);
            },
          ),
          body: child,
        );
      },
    );
  }
}
