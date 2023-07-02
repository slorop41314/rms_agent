import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:presenter/presenter.dart';
import 'package:rms_agent/src/routes/app_router.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (_) => GetIt.I.get()
        ..add(
          SplashEvent.started(),
        ),
      child: BlocListener<SplashBloc, SplashState>(
        listener: _listener,
        child: Scaffold(
          body: Center(
            child: Text(
              'IDFlow',
            ),
          ),
        ),
      ),
    );
  }

  void _listener(BuildContext context, SplashState state) {
    state.maybeWhen(
      authenticated: () {
        context.router.pushAndPopUntil(
          MainDashboardRoute(),
          predicate: (_) => false,
        );
      },
      unauthenticated: () {
        context.router.pushAndPopUntil(
          LoginRoute(),
          predicate: (_) => false,
        );
      },
      orElse: () => null,
    );
  }
}
