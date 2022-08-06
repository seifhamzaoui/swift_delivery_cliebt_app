import 'package:client_app/domain/location/entities.dart';
import 'package:client_app/domain/location/location_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class IlocationRepository {
  Future<Either<LocationFAilure, Adress>> getmagasinAdress(LatLng position);
}
