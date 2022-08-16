// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/register_bloc/register_bloc.dart' as _i7;
import 'application/location/location_bloc.dart' as _i6;
import 'domain/location/I_location_repository.dart' as _i4;
import 'infrastructure/core/inject_module.dart' as _i8;
import 'infrastructure/location/location_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.factory<_i4.IlocationRepository>(() => _i5.locationREpository());
  gh.singleton<_i6.LocationBloc>(
      _i6.LocationBloc(get<_i4.IlocationRepository>()));
  gh.factory<_i7.RegisterBloc>(() => _i7.RegisterBloc(
      get<_i4.IlocationRepository>(), get<_i3.FirebaseAuth>()));
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
