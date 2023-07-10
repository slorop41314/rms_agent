import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'domain_base.config.dart';

export 'package:gotrue/src/constants.dart';
export 'package:gotrue/src/types/auth_exception.dart';
export 'package:gotrue/src/types/auth_response.dart';
export 'package:gotrue/src/types/auth_state.dart';
export 'package:gotrue/src/types/session.dart';
export 'package:gotrue/src/types/user.dart';

final getIt = GetIt.instance;

@InjectableInit()
FutureOr<void> configureDomainDependencies() => getIt.init();
