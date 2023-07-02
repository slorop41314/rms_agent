// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/src/api_provider/api_interceptor.dart' as _i10;
import 'package:data/src/api_provider/api_provider.dart' as _i11;
import 'package:data/src/api_provider/api_provider_impl.dart' as _i12;
import 'package:data/src/cache/auth_cache.dart' as _i13;
import 'package:data/src/cache/secure_storage_manager.dart' as _i9;
import 'package:data/src/remote/auth_remote.dart' as _i3;
import 'package:data/src/remote/reseller_remote.dart' as _i7;
import 'package:data/src/repository/auth_repository_impl.dart' as _i6;
import 'package:data/src/repository/reseller_repository_impl.dart' as _i8;
import 'package:domain/domain.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:supabase_flutter/supabase_flutter.dart' as _i4;

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
    gh.factory<_i3.AuthRemote>(() => _i3.AuthRemote(gh<_i4.SupabaseClient>()));
    gh.factory<_i5.AuthRepository>(
        () => _i6.AuthRepositoryImpl(gh<_i3.AuthRemote>()));
    gh.factory<_i7.ResellerRemote>(
        () => _i7.ResellerRemote(gh<_i4.SupabaseClient>()));
    gh.factory<_i5.ResellerRepository>(
        () => _i8.ResellerRepositoryImpl(gh<_i7.ResellerRemote>()));
    gh.singleton<_i9.SecureStorageManager>(_i9.SecureStorageManager());
    gh.singleton<_i10.ApiInterceptor>(_i10.ApiInterceptor(
        secureStorageManager: gh<_i9.SecureStorageManager>()));
    gh.singleton<_i11.ApiProvider>(
        _i12.ApiProviderImpl(gh<_i10.ApiInterceptor>()));
    gh.factory<_i13.AuthCache>(
        () => _i13.AuthCache(secureStorage: gh<_i9.SecureStorageManager>()));
    return this;
  }
}
