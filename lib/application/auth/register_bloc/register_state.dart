part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    required int index,
    required Option<AccountTypes> accountType,
    required Option<MagasinCategory> magasinType,
    required Option<MagasinSubCategory> subtype,
    required Option<DateTime> beginHour,
    required Option<DateTime> endHour,
    required Option<DateTime> beginDay,
    required Option<DateTime> endDay,
    required Option<bool> workAlldays,
    required Option<File> picture,
    required Option<Adress> magasinAdress,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
      index: 0,
      accountType: none(),
      magasinType: none(),
      subtype: none(),
      beginDay: none(),
      beginHour: none(),
      endDay: none(),
      endHour: none(),
      workAlldays: none(),
      picture: none(),
      magasinAdress: none());
}
