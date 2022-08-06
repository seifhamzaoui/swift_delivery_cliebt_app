// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Adress {
  String get street => throw _privateConstructorUsedError;
  LatLng get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdressCopyWith<Adress> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdressCopyWith<$Res> {
  factory $AdressCopyWith(Adress value, $Res Function(Adress) then) =
      _$AdressCopyWithImpl<$Res>;
  $Res call({String street, LatLng position});
}

/// @nodoc
class _$AdressCopyWithImpl<$Res> implements $AdressCopyWith<$Res> {
  _$AdressCopyWithImpl(this._value, this._then);

  final Adress _value;
  // ignore: unused_field
  final $Res Function(Adress) _then;

  @override
  $Res call({
    Object? street = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
abstract class _$$_AdressCopyWith<$Res> implements $AdressCopyWith<$Res> {
  factory _$$_AdressCopyWith(_$_Adress value, $Res Function(_$_Adress) then) =
      __$$_AdressCopyWithImpl<$Res>;
  @override
  $Res call({String street, LatLng position});
}

/// @nodoc
class __$$_AdressCopyWithImpl<$Res> extends _$AdressCopyWithImpl<$Res>
    implements _$$_AdressCopyWith<$Res> {
  __$$_AdressCopyWithImpl(_$_Adress _value, $Res Function(_$_Adress) _then)
      : super(_value, (v) => _then(v as _$_Adress));

  @override
  _$_Adress get _value => super._value as _$_Adress;

  @override
  $Res call({
    Object? street = freezed,
    Object? position = freezed,
  }) {
    return _then(_$_Adress(
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_Adress implements _Adress {
  const _$_Adress({required this.street, required this.position});

  @override
  final String street;
  @override
  final LatLng position;

  @override
  String toString() {
    return 'Adress(street: $street, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Adress &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$$_AdressCopyWith<_$_Adress> get copyWith =>
      __$$_AdressCopyWithImpl<_$_Adress>(this, _$identity);
}

abstract class _Adress implements Adress {
  const factory _Adress(
      {required final String street,
      required final LatLng position}) = _$_Adress;

  @override
  String get street;
  @override
  LatLng get position;
  @override
  @JsonKey(ignore: true)
  _$$_AdressCopyWith<_$_Adress> get copyWith =>
      throw _privateConstructorUsedError;
}
