import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'domain_base.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
FutureOr<void> configureDomainDependencies() => getIt.init();
