import 'package:rms_agent/i18n/strings.g.dart';
import 'package:rms_agent/src/routes/app_router.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:presenter/presenter.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await configureDataDependencies();
  await configureDomainDependencies();
  await configurePresenterDependencies();
  // Uncomment or move logic
  LocaleSettings.setLocaleRaw('en_EN');
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Boilerplate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}
