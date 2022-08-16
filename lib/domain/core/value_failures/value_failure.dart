import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength(T value, int maxLength) = _ExceedingLength;
  const factory ValueFailure.empty() = _Empty;
  const factory ValueFailure.invlaidPassword(T value) = _InvalidPassword;
  const factory ValueFailure.invalidePhoneNumber(T value) = _InvalidePhoneNumber;
}
