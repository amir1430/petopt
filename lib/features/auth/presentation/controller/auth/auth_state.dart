part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unknown() = _Unknown;

  const factory AuthState.authenticated({
    required AppUser user,
  }) = _authenticated;

  const factory AuthState.unAuthenticated() = _unAuthenticated;
}
