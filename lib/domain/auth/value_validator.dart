import 'package:client_app/domain/core/value_failures/value_failure.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateUserName(String input) {
  const maxLength = 20;
  if (input.length > maxLength) {
    return left(ValueFailure.exceedingLength(
      input,
      maxLength,
    ));
  }
  if (input.isEmpty) {
    return left(ValueFailure.empty());
  }
  return right(input);
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const maxLength = 20;
  RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (input.isEmpty) {
    return left(ValueFailure.empty());
  }
  if (!regex.hasMatch(input)) {
    return left(ValueFailure.invlaidPassword(input));
  }
  return right(input);
}

Either<ValueFailure<int>, int> validatePhoneNumber(String input) {
  RegExp regex = RegExp(r"^(00213|\+213)(5|6|7)[0-9]{8}$");
  try {
    if (int.parse(input) is int) {
      if (input.isEmpty) {
        return left(ValueFailure.empty());
      }
      if (!regex.hasMatch(input)) {
        return left(ValueFailure.invalidePhoneNumber(int.parse(input)));
      }
      return right(int.parse(input));
    }
    return left(ValueFailure.invalidePhoneNumber(int.parse(input)));
  } catch (e) {
    return left(ValueFailure.invalidePhoneNumber(int.parse(input)));
  }
}
