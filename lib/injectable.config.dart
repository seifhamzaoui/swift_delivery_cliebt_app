// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/register_bloc/register_bloc.dart' as _i6;
import 'application/location/location_bloc.dart' as _i5;
import 'domain/location/I_location_repository.dart' as _i3;
import 'infrastructure/location/location_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IlocationRepository>(() => _i4.locationREpository());
  gh.singleton<_i5.LocationBloc>(
      _i5.LocationBloc(get<_i3.IlocationRepository>()));
  gh.factory<_i6.RegisterBloc>(
      () => _i6.RegisterBloc(get<_i3.IlocationRepository>()));
  return get;
}
