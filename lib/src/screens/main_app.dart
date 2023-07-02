import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:presenter/presenter.dart';
import 'package:rms_agent/src/components/shared/app_theme.dart';
import 'package:rms_agent/src/routes/app_router.dart';

class MainApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainAppBloc>(
      create: (_) => GetIt.I.get()
        ..add(
          const MainAppEvent.started(),
        ),
      child: BlocListener<MainAppBloc, MainAppState>(
        listener: _listener,
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: MaterialApp.router(
            routerConfig: _appRouter.config(),
            theme: appTheme(),
          ),
        ),
      ),
    );
  }

  void _listener(BuildContext context, MainAppState state) {
    state.maybeWhen(
      authExpired: () {
        _appRouter.pushAndPopUntil(
          const LoginRoute(),
          predicate: (_) => false,
        );
      },
      orElse: () => null,
    );
  }
}
