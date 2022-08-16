import 'package:client_app/domain/core/value_failures/value_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure, T> get value;
}
