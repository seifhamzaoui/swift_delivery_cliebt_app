import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_failure.freezed.dart';

@freezed
abstract class LocationFAilure with _$LocationFAilure {
  const factory LocationFAilure.serverError() = _ServerError;
}
