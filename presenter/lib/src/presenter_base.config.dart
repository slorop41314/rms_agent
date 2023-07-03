// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:presenter/src/ui/login_bloc/login_bloc.dart' as _i3;
import 'package:presenter/src/ui/main_bloc/main_app_bloc.dart' as _i5;
import 'package:presenter/src/ui/register_bloc/register_bloc.dart' as _i6;
import 'package:presenter/src/ui/settings_bloc/settings_bloc.dart' as _i7;
import 'package:presenter/src/ui/splash_bloc/splash_bloc.dart' as _i8;

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
    gh.factory<_i3.LoginBloc>(
        () => _i3.LoginBloc(gh<_i4.LoginWithEmailUseCase>()));
    gh.factory<_i5.MainAppBloc>(
        () => _i5.MainAppBloc(gh<_i4.ListenAuthEventChangeUseCase>()));
    gh.factory<_i6.RegisterBloc>(() => _i6.RegisterBloc(
          gh<_i4.RegisterWithEmailUseCase>(),
          gh<_i4.GetResellerProfileByReferralCodeUseCase>(),
        ));
    gh.factory<_i7.SettingsBloc>(() => _i7.SettingsBloc(
          gh<_i4.GetCurrentResellerProfileUseCase>(),
          gh<_i4.LogoutUseCase>(),
        ));
    gh.factory<_i8.SplashBloc>(
        () => _i8.SplashBloc(gh<_i4.GetCurrentAuthUserUseCase>()));
    return this;
  }
}
