part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.registerRequsted() = _RegisterRequsted;

  const factory RegisterEvent.emailChanged(String value) = _EmailChanged;
  const factory RegisterEvent.passwordChanged(String value) = _PasswordChanged;
  const factory RegisterEvent.rePasswordChanged(String value) =
      _RePasswordChanged;
}
