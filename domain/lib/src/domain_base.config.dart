// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i4;
import 'package:domain/src/use_case/auth/get_current_auth_user_use_case.dart'
    as _i3;
import 'package:domain/src/use_case/auth/listen_auth_event_change_use_case.dart'
    as _i6;
import 'package:domain/src/use_case/auth/login_with_email_use_case.dart' as _i7;
import 'package:domain/src/use_case/auth/logout_use_case.dart' as _i8;
import 'package:domain/src/use_case/reseller/get_current_reseller_profile_use_case.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.GetCurrentAuthUserUseCase>(
        () => _i3.GetCurrentAuthUserUseCase(gh<_i4.AuthRepository>()));
    gh.factory<_i5.GetCurrentResellerProfileUseCase>(
        () => _i5.GetCurrentResellerProfileUseCase(
              gh<_i4.AuthRepository>(),
              gh<_i4.ResellerRepository>(),
            ));
    gh.factory<_i6.ListenAuthEventChangeUseCase>(
        () => _i6.ListenAuthEventChangeUseCase(gh<_i4.AuthRepository>()));
    gh.factory<_i7.LoginWithEmailUseCase>(
        () => _i7.LoginWithEmailUseCase(gh<_i4.AuthRepository>()));
    gh.factory<_i8.LogoutUseCase>(
        () => _i8.LogoutUseCase(gh<_i4.AuthRepository>()));
    return this;
  }
}
