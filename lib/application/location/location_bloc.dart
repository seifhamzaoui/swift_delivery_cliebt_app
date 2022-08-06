// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:client_app/domain/location/entities.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:client_app/domain/location/I_location_repository.dart';

part 'location_bloc.freezed.dart';
part 'location_event.dart';
part 'location_state.dart';

@Singleton()
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  IlocationRepository _locationRepository;
  LocationBloc(
    this._locationRepository,
  ) : super(_Initial()) {
    on<LocationEvent>((event, emit) async {
      await event.map(started: (e) async {
        print('location event strated');
        bool serviceEnabled;
        LocationPermission permission;
        emit(LocationState.loading());
        // Test if location services are enabled.
        serviceEnabled = await Geolocator.isLocationServiceEnabled();
        if (!serviceEnabled) {
          bool isopened = await Geolocator.openLocationSettings();
          if (!isopened) {
            emit(LocationState.locationServiceDisabled());
            return 0;
          }
        }

        permission = await Geolocator.checkPermission();
        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          if (permission == LocationPermission.denied) {
            emit(LocationState.locationPermissionDenied());
            return 0;
          }
        }

        if (permission == LocationPermission.deniedForever) {
          // Permissions are denied forever, handle appropriately.
          emit(LocationState.locationPermissionDenied());
          return 0;
        }

        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation,
        );
        print(position.latitude);
        print(position.longitude);
        final fOrs = await _locationRepository
            .getmagasinAdress(LatLng(position.latitude, position.longitude));
        fOrs.fold((l) {
          LocationState.locationServiceDisabled();
          print('error');
        }, (adress) {
          emit(LocationState.positionlocated(adress));
        });
      });
    });
  }
}
