// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LocationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LocationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Adress adress) positionlocated,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PositionLocated value) positionlocated,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LocationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Adress adress) positionlocated,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PositionLocated value) positionlocated,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Adress adress) positionlocated,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PositionLocated value) positionlocated,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LocationState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_PositionLocatedCopyWith<$Res> {
  factory _$$_PositionLocatedCopyWith(
          _$_PositionLocated value, $Res Function(_$_PositionLocated) then) =
      __$$_PositionLocatedCopyWithImpl<$Res>;
  $Res call({Adress adress});

  $AdressCopyWith<$Res> get adress;
}

/// @nodoc
class __$$_PositionLocatedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$$_PositionLocatedCopyWith<$Res> {
  __$$_PositionLocatedCopyWithImpl(
      _$_PositionLocated _value, $Res Function(_$_PositionLocated) _then)
      : super(_value, (v) => _then(v as _$_PositionLocated));

  @override
  _$_PositionLocated get _value => super._value as _$_PositionLocated;

  @override
  $Res call({
    Object? adress = freezed,
  }) {
    return _then(_$_PositionLocated(
      adress == freezed
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as Adress,
    ));
  }

  @override
  $AdressCopyWith<$Res> get adress {
    return $AdressCopyWith<$Res>(_value.adress, (value) {
      return _then(_value.copyWith(adress: value));
    });
  }
}

/// @nodoc

class _$_PositionLocated implements _PositionLocated {
  const _$_PositionLocated(this.adress);

  @override
  final Adress adress;

  @override
  String toString() {
    return 'LocationState.positionlocated(adress: $adress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionLocated &&
            const DeepCollectionEquality().equals(other.adress, adress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adress));

  @JsonKey(ignore: true)
  @override
  _$$_PositionLocatedCopyWith<_$_PositionLocated> get copyWith =>
      __$$_PositionLocatedCopyWithImpl<_$_PositionLocated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Adress adress) positionlocated,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
  }) {
    return positionlocated(adress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
  }) {
    return positionlocated?.call(adress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    required TResult orElse(),
  }) {
    if (positionlocated != null) {
      return positionlocated(adress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PositionLocated value) positionlocated,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
  }) {
    return positionlocated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
  }) {
    return positionlocated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    required TResult orElse(),
  }) {
    if (positionlocated != null) {
      return positionlocated(this);
    }
    return orElse();
  }
}

abstract class _PositionLocated implements LocationState {
  const factory _PositionLocated(final Adress adress) = _$_PositionLocated;

  Adress get adress;
  @JsonKey(ignore: true)
  _$$_PositionLocatedCopyWith<_$_PositionLocated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationServiceDisabledCopyWith<$Res> {
  factory _$$_LocationServiceDisabledCopyWith(_$_LocationServiceDisabled value,
          $Res Function(_$_LocationServiceDisabled) then) =
      __$$_LocationServiceDisabledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocationServiceDisabledCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$$_LocationServiceDisabledCopyWith<$Res> {
  __$$_LocationServiceDisabledCopyWithImpl(_$_LocationServiceDisabled _value,
      $Res Function(_$_LocationServiceDisabled) _then)
      : super(_value, (v) => _then(v as _$_LocationServiceDisabled));

  @override
  _$_LocationServiceDisabled get _value =>
      super._value as _$_LocationServiceDisabled;
}

/// @nodoc

class _$_LocationServiceDisabled implements _LocationServiceDisabled {
  const _$_LocationServiceDisabled();

  @override
  String toString() {
    return 'LocationState.locationServiceDisabled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationServiceDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Adress adress) positionlocated,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
  }) {
    return locationServiceDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
  }) {
    return locationServiceDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    required TResult orElse(),
  }) {
    if (locationServiceDisabled != null) {
      return locationServiceDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PositionLocated value) positionlocated,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
  }) {
    return locationServiceDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
  }) {
    return locationServiceDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    required TResult orElse(),
  }) {
    if (locationServiceDisabled != null) {
      return locationServiceDisabled(this);
    }
    return orElse();
  }
}

abstract class _LocationServiceDisabled implements LocationState {
  const factory _LocationServiceDisabled() = _$_LocationServiceDisabled;
}

/// @nodoc
abstract class _$$_LocationPermissionDeniedCopyWith<$Res> {
  factory _$$_LocationPermissionDeniedCopyWith(
          _$_LocationPermissionDenied value,
          $Res Function(_$_LocationPermissionDenied) then) =
      __$$_LocationPermissionDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocationPermissionDeniedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$$_LocationPermissionDeniedCopyWith<$Res> {
  __$$_LocationPermissionDeniedCopyWithImpl(_$_LocationPermissionDenied _value,
      $Res Function(_$_LocationPermissionDenied) _then)
      : super(_value, (v) => _then(v as _$_LocationPermissionDenied));

  @override
  _$_LocationPermissionDenied get _value =>
      super._value as _$_LocationPermissionDenied;
}

/// @nodoc

class _$_LocationPermissionDenied implements _LocationPermissionDenied {
  const _$_LocationPermissionDenied();

  @override
  String toString() {
    return 'LocationState.locationPermissionDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationPermissionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Adress adress) positionlocated,
    required TResult Function() locationServiceDisabled,
    required TResult Function() locationPermissionDenied,
  }) {
    return locationPermissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
  }) {
    return locationPermissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Adress adress)? positionlocated,
    TResult Function()? locationServiceDisabled,
    TResult Function()? locationPermissionDenied,
    required TResult orElse(),
  }) {
    if (locationPermissionDenied != null) {
      return locationPermissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PositionLocated value) positionlocated,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
  }) {
    return locationPermissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
  }) {
    return locationPermissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PositionLocated value)? positionlocated,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    required TResult orElse(),
  }) {
    if (locationPermissionDenied != null) {
      return locationPermissionDenied(this);
    }
    return orElse();
  }
}

abstract class _LocationPermissionDenied implements LocationState {
  const factory _LocationPermissionDenied() = _$_LocationPermissionDenied;
}
