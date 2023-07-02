import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rms_agent/src/components/shared/shared.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  static const route = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'Home',
      ),
    );
  }
}
