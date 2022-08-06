import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'entities.freezed.dart';

@freezed
abstract class Adress with _$Adress {
  const factory Adress({
    required String street,
    required LatLng position,
  }) = _Adress;
}
