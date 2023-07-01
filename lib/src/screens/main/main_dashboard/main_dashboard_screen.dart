import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rms_agent/src/components/shared/shared.dart';

@RoutePage()
class MainDashboardScreen extends StatefulWidget {
  const MainDashboardScreen({super.key});

  @override
  State<MainDashboardScreen> createState() => _MainDashboardScreenState();
}

class _MainDashboardScreenState extends State<MainDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('MAIN'),
    );
  }
}
