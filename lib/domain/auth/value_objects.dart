import 'package:client_app/domain/auth/value_validator.dart';
import 'package:client_app/domain/core/value_failures/value_failure.dart';
import 'package:client_app/domain/core/value_object.dart';
import 'package:dartz/dartz.dart';

class UserName extends ValueObject<String> {
  UserName._(this.value);
  final Either<ValueFailure<String>, String> value;
  factory UserName(String input) {
    assert(input != null);
    return UserName._(validateUserName(input));
  }
}

class Password extends ValueObject<String> {
  Password._(this.value);
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    assert(input != null);
    return Password._(validateUserName(input));
  }
}

class firstName extends ValueObject<String> {
  firstName._(this.value);
  final Either<ValueFailure<String>, String> value;
  factory firstName(String input) {
    assert(input != null);
    return firstName._(validateUserName(input));
  }
}

class LastName extends ValueObject<String> {
  LastName._(this.value);
  final Either<ValueFailure<String>, String> value;
  factory LastName(String input) {
    assert(input != null);
    return LastName._(validateUserName(input));
  }
}

class PhoneNumber extends ValueObject<int> {
  PhoneNumber._(this.value);
  final Either<ValueFailure<int>, int> value;
  factory PhoneNumber(String input) {
    assert(input != null);
    return PhoneNumber._(validatePhoneNumber(input));
  }
}
