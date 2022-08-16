// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:date_format/date_format.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:client_app/application/location/location_bloc.dart';
import 'package:client_app/domain/location/I_location_repository.dart';
import 'package:client_app/domain/location/entities.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/constants/models.dart';

import '../../../domain/auth/value_objects.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@Injectable()
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IlocationRepository _locationRepository;
  final FirebaseAuth _firebaseAuth;
  RegisterBloc(
    this._locationRepository,
    this._firebaseAuth,
  ) : super(RegisterState.initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          emit(state.copyWith(index: 0));
        },
        setFirstName: ((value) {
          emit(state.copyWith(
            firstName: UserName(value.fname),
            showErrors: false,
          ));
        }),
        setSecondName: ((value) {
          emit(state.copyWith(
            secondName: UserName(value.sname),
            showErrors: false,
          ));
        }),
        setUserName: ((value) {
          emit(state.copyWith(
            usename: UserName(value.userName),
            showErrors: false,
          ));
        }),
        setPassword: ((value) {
          emit(state.copyWith(
            password: Password(value.password),
            showErrors: false,
          ));
        }),
        setPhoneNumber: (value) {
          emit(state.copyWith(showErrors: false, phoneNumber: PhoneNumber(value.phoneNUmber)));
        },
        validateinfo: (e) async {
          if (state.firstName.value.isRight() &&
              state.secondName.value.isRight() &&
              state.usename.value.isRight() &&
              state.phoneNumber.value.isRight() &&
              state.password.value.isRight()) {
            _firebaseAuth.verifyPhoneNumber(
              phoneNumber: state.phoneNumber.value.getOrElse(() => 10).toString(),
              timeout: Duration(seconds: 60),
              verificationCompleted: (AuthCredential authCredential) {},
              verificationFailed: (FirebaseAuthException authException) {},
              codeSent: (String verificationId, int? forceResendingToken) {},
              codeAutoRetrievalTimeout: (String verificationId) {},
            );
          }
          emit(state.copyWith(showErrors: true));
        },
        validatePhone: (e) async {
          emit(state.copyWith(index: 2));
        },
        setAccountType: (e) async {
          emit(state.copyWith(accountType: some(e.accountTypes)));
          if (e.accountTypes == AccountTypes.magazin) emit(state.copyWith(index: 3));
        },
        setmagasinType: (e) async {
          emit(state.copyWith(magasinType: some(e.magasinType)));
          e.magasinType.subcategory == null
              ? emit(state.copyWith(index: 5))
              : emit(state.copyWith(index: 4));
        },
        setRestaurantType: (e) async {
          emit(state.copyWith(subtype: some(e.magasinSubtype), index: 5));
        },
        selectmagasinPicture: (e) async {
          FilePickerResult? result = await FilePicker.platform.pickFiles(
            type: FileType.custom,
            allowedExtensions: ['jpg', 'png'],
          );
          if (result != null) {
            emit(state.copyWith(picture: some(File(result.files.first.path ?? ''))));
          } else
            emit(state.copyWith(picture: none()));
        },
        setREstaurantInfo: (e) async {
          emit(state.copyWith(index: 6));
        },
        setWorkingTime: (e) async {
          if (e.workAlldays) {
            emit(state.copyWith(
                beginHour: some(e.beginHour),
                endHour: some(e.endHour),
                workAlldays: some(e.workAlldays)));
          } else {
            emit(state.copyWith(
                beginHour: some(e.beginHour),
                endHour: some(e.endHour),
                beginDay: some(e.beginDay),
                endDay: some(e.endDay),
                workAlldays: some(e.workAlldays)));
          }
          emit(state.copyWith(index: 7));
        },
        setMagasinlocation: (e) async {
          final fOrs = await _locationRepository.getmagasinAdress(e.postion);
          fOrs.fold((l) => null, (r) {
            emit(state.copyWith(magasinAdress: some(r), index: 8));
          });
        },
        returnTo: (e) async {
          if (state.index == 8) return;
          if (state.index - (e.value ?? 1) >= 0) {
            if (state.index == 5)
              emit(state.copyWith(index: 3));
            else
              emit(state.copyWith(index: state.index - (e.value ?? 1)));
          }
        },
      );
    });
  }
}
