import 'dart:convert';

import 'package:client_app/domain/location/I_location_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';
import 'package:dartz/dartz.dart';
import 'package:client_app/domain/location/location_failure.dart';
import 'package:client_app/domain/location/entities.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IlocationRepository)
class locationREpository implements IlocationRepository {
  String MAP_API_KEY = dotenv.env['MAP_API_KEY'] ?? '';
  String _currentAdressUrl(LatLng position) {
    return "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$MAP_API_KEY";
  }

  @override
  Future<Either<LocationFAilure, Adress>> getmagasinAdress(LatLng position) async {
    try {
      Response res = await Dio().get(_currentAdressUrl(position));
      Map<String, dynamic> json = jsonDecode(jsonEncode(res.data));
      if (json['status'] == 'OK') {
        print(json['results'][0]['formatted_address']);
        return Right(Adress(
          street: json['results'][0]['formatted_address'],
          position: position,
        ));
      } else {
        return Left(LocationFAilure.serverError());
      }
    } catch (e) {
      return Left(LocationFAilure.serverError());
    }
    throw UnimplementedError();
  }
}
