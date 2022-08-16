// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function(T value) invlaidPassword,
    required TResult Function(T value) invalidePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function(T value)? invlaidPassword,
    TResult Function(T value)? invalidePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function(T value)? invlaidPassword,
    TResult Function(T value)? invalidePhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidPassword<T> value) invlaidPassword,
    required TResult Function(_InvalidePhoneNumber<T> value)
        invalidePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidPassword<T> value)? invlaidPassword,
    TResult Function(_InvalidePhoneNumber<T> value)? invalidePhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidPassword<T> value)? invlaidPassword,
    TResult Function(_InvalidePhoneNumber<T> value)? invalidePhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$$_ExceedingLengthCopyWith<T, $Res> {
  factory _$$_ExceedingLengthCopyWith(_$_ExceedingLength<T> value,
          $Res Function(_$_ExceedingLength<T>) then) =
      __$$_ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T value, int maxLength});
}

/// @nodoc
class __$$_ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_ExceedingLengthCopyWith<T, $Res> {
  __$$_ExceedingLengthCopyWithImpl(
      _$_ExceedingLength<T> _value, $Res Function(_$_ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as _$_ExceedingLength<T>));

  @override
  _$_ExceedingLength<T> get _value => super._value as _$_ExceedingLength<T>;

  @override
  $Res call({
    Object? value = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_$_ExceedingLength<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExceedingLength<T> implements _ExceedingLength<T> {
  const _$_ExceedingLength(this.value, this.maxLength);

  @override
  final T value;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(value: $value, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExceedingLength<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.maxLength, maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(maxLength));

  @JsonKey(ignore: true)
  @override
  _$$_ExceedingLengthCopyWith<T, _$_ExceedingLength<T>> get copyWith =>
      __$$_ExceedingLengthCopyWithImpl<T, _$_ExceedingLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function(T value) invlaidPassword,
    required TResult Function(T value) invalidePhoneNumber,
  }) {
    return exceedingLength(value, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function(T value)? invlaidPassword,
    TResult Function(T value)? invalidePhoneNumber,
  }) {
    return exceedingLength?.call(value, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function(T value)? invlaidPassword,
    TResult Function(T value)? invalidePhoneNumber,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(value, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidPassword<T> value) invlaidPassword,
    required TResult Function(_InvalidePhoneNumber<T> value)
        invalidePhoneNumber,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidPassword<T> value)? invlaidPassword,
    TResult Function(_InvalidePhoneNumber<T> value)? invalidePhoneNumber,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidPassword<T> value)? invlaidPassword,
    TResult Function(_InvalidePhoneNumber<T> value)? invalidePhoneNumber,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength<T> implements ValueFailure<T> {
  const factory _ExceedingLength(final T value, final int maxLength) =
      _$_ExceedingLength<T>;

  T get value;
  int get maxLength;
  @JsonKey(ignore: true)
  _$$_ExceedingLengthCopyWith<T, _$_ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<T, $Res> {
  factory _$$_EmptyCopyWith(
          _$_Empty<T> value, $Res Function(_$_Empty<T>) then) =
      __$$_EmptyCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_EmptyCopyWith<T, $Res> {
  __$$_EmptyCopyWithImpl(_$_Empty<T> _value, $Res Function(_$_Empty<T>) _then)
      : super(_value, (v) => _then(v as _$_Empty<T>));

  @override
  _$_Empty<T> get _value => super._value as _$_Empty<T>;
}

/// @nodoc

class _$_Empty<T> implements _Empty<T> {
  const _$_Empty();

  @override
  String toString() {
    return 'ValueFailure<$T>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function(T value) invlaidPassword,
    required TResult Function(T value) invalidePhoneNumber,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function(T value)? invlaidPassword,
    TResult Function(T value)? invalidePhoneNumber,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function(T value)? invlaidPassword,
    TResult Function(T value)? invalidePhoneNumber,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidPassword<T> value) invlaidPassword,
    required TResult Function(_InvalidePhoneNumber<T> value)
        invalidePhoneNumber,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidPassword<T> value)? invlaidPassword,
    TResult Function(_InvalidePhoneNumber<T> value)? invalidePhoneNumber,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidPassword<T> value)? invlaidPassword,
    TResult Function(_InvalidePhoneNumber<T> value)? invalidePhoneNumber,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  const factory _Empty() = _$_Empty<T>;
}

/// @nodoc
abstract class _$$_InvalidPasswordCopyWith<T, $Res> {
  factory _$$_InvalidPasswordCopyWith(_$_InvalidPassword<T> value,
          $Res Function(_$_InvalidPassword<T>) then) =
      __$$_InvalidPasswordCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$_InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_InvalidPasswordCopyWith<T, $Res> {
  __$$_InvalidPasswordCopyWithImpl(
      _$_InvalidPassword<T> _value, $Res Function(_$_InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as _$_InvalidPassword<T>));

  @override
  _$_InvalidPassword<T> get _value => super._value as _$_InvalidPassword<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_InvalidPassword<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidPassword<T> implements _InvalidPassword<T> {
  const _$_InvalidPassword(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'ValueFailure<$T>.invlaidPassword(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidPassword<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidPasswordCopyWith<T, _$_InvalidPassword<T>> get copyWith =>
      __$$_InvalidPasswordCopyWithImpl<T, _$_InvalidPassword<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function(T value) invlaidPassword,
    required TResult Function(T value) invalidePhoneNumber,
  }) {
    return invlaidPassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function(T value)? invlaidPassword,
    TResult Function(T value)? invalidePhoneNumber,
  }) {
    return invlaidPassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function(T value)? invlaidPassword,
    TResult Function(T value)? invalidePhoneNumber,
    required TResult orElse(),
  }) {
    if (invlaidPassword != null) {
      return invlaidPassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidPassword<T> value) invlaidPassword,
    required TResult Function(_InvalidePhoneNumber<T> value)
        invalidePhoneNumber,
  }) {
    return invlaidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidPassword<T> value)? invlaidPassword,
    TResult Function(_InvalidePhoneNumber<T> value)? invalidePhoneNumber,
  }) {
    return invlaidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidPassword<T> value)? invlaidPassword,
    TResult Function(_InvalidePhoneNumber<T> value)? invalidePhoneNumber,
    required TResult orElse(),
  }) {
    if (invlaidPassword != null) {
      return invlaidPassword(this);
    }
    return orElse();
  }
}

abstract class _InvalidPassword<T> implements ValueFailure<T> {
  const factory _InvalidPassword(final T value) = _$_InvalidPassword<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$_InvalidPasswordCopyWith<T, _$_InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidePhoneNumberCopyWith<T, $Res> {
  factory _$$_InvalidePhoneNumberCopyWith(_$_InvalidePhoneNumber<T> value,
          $Res Function(_$_InvalidePhoneNumber<T>) then) =
      __$$_InvalidePhoneNumberCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$_InvalidePhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_InvalidePhoneNumberCopyWith<T, $Res> {
  __$$_InvalidePhoneNumberCopyWithImpl(_$_InvalidePhoneNumber<T> _value,
      $Res Function(_$_InvalidePhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as _$_InvalidePhoneNumber<T>));

  @override
  _$_InvalidePhoneNumber<T> get _value =>
      super._value as _$_InvalidePhoneNumber<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_InvalidePhoneNumber<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidePhoneNumber<T> implements _InvalidePhoneNumber<T> {
  const _$_InvalidePhoneNumber(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidePhoneNumber(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidePhoneNumber<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidePhoneNumberCopyWith<T, _$_InvalidePhoneNumber<T>> get copyWith =>
      __$$_InvalidePhoneNumberCopyWithImpl<T, _$_InvalidePhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, int maxLength) exceedingLength,
    required TResult Function() empty,
    required TResult Function(T value) invlaidPassword,
    required TResult Function(T value) invalidePhoneNumber,
  }) {
    return invalidePhoneNumber(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function(T value)? invlaidPassword,
    TResult Function(T value)? invalidePhoneNumber,
  }) {
    return invalidePhoneNumber?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, int maxLength)? exceedingLength,
    TResult Function()? empty,
    TResult Function(T value)? invlaidPassword,
    TResult Function(T value)? invalidePhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidePhoneNumber != null) {
      return invalidePhoneNumber(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidPassword<T> value) invlaidPassword,
    required TResult Function(_InvalidePhoneNumber<T> value)
        invalidePhoneNumber,
  }) {
    return invalidePhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidPassword<T> value)? invlaidPassword,
    TResult Function(_InvalidePhoneNumber<T> value)? invalidePhoneNumber,
  }) {
    return invalidePhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidPassword<T> value)? invlaidPassword,
    TResult Function(_InvalidePhoneNumber<T> value)? invalidePhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidePhoneNumber != null) {
      return invalidePhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidePhoneNumber<T> implements ValueFailure<T> {
  const factory _InvalidePhoneNumber(final T value) = _$_InvalidePhoneNumber<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$_InvalidePhoneNumberCopyWith<T, _$_InvalidePhoneNumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
