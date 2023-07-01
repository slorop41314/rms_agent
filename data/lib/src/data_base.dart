import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:utilities/utilities.dart';

import 'data_base.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
FutureOr<void> configureDataDependencies() async {
  await Supabase.initialize(
    url: AppConstant.sbUrl,
    anonKey: AppConstant.sbAnonKey,
  );
  getIt.registerSingleton<SupabaseClient>(Supabase.instance.client);
  getIt.init();
}
