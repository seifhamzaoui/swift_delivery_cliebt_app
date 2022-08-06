part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.loading() = _Loading;
  const factory LocationState.positionlocated(Adress adress) = _PositionLocated;
  const factory LocationState.locationServiceDisabled() = _LocationServiceDisabled;
  const factory LocationState.locationPermissionDenied() = _LocationPermissionDenied;
}
