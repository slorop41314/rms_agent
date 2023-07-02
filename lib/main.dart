import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:presenter/presenter.dart';
import 'package:rms_agent/i18n/strings.g.dart';
import 'package:rms_agent/src/screens/main_app.dart';
import 'package:utilities/utilities.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await configureDataDependencies();
  await configureDomainDependencies();
  await configurePresenterDependencies();
  // Uncomment or move logic
  LocaleSettings.setLocaleRaw(AppConstant.defaultLocale);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IDFlow RMS',
      home: MainApp(),
    );
  }
}
