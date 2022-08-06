part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.validateinfo() = _Validateinfo;
  const factory RegisterEvent.validatePhone() = _ValidatePhone;
  const factory RegisterEvent.setAccountType(AccountTypes accountTypes) = _SetAccountType;
  const factory RegisterEvent.setmagasinType(MagasinCategory magasinType) = _SetmagasinType;
  const factory RegisterEvent.setRestaurantType(MagasinSubCategory magasinSubtype) =
      _SetRestaurantType;
  const factory RegisterEvent.setREstaurantInfo() = _SetREstaurantInfo;
  const factory RegisterEvent.setWorkingTime({
    required DateTime beginHour,
    required DateTime endHour,
    required DateTime beginDay,
    required DateTime endDay,
    required bool workAlldays,
  }) = _SetWorkingTime;
  const factory RegisterEvent.selectmagasinPicture() = _selectmagasinPicture;
  const factory RegisterEvent.setMagasinlocation({required LatLng postion}) = _setMagasinlocation;
  factory RegisterEvent.returnTo([int? value]) = _ReturnTo;
}
