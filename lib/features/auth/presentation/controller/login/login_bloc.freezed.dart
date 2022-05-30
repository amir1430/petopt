// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginWithEmailAndPasswordPressed,
    required TResult Function() loginWithGooglePressed,
    required TResult Function() anonymousLoginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_LoginWithEmailAndPasswordPressed value)
        loginWithEmailAndPasswordPressed,
    required TResult Function(_LoginWithGooglePressed value)
        loginWithGooglePressed,
    required TResult Function(_AnonymousLoginPressed value)
        anonymousLoginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, (v) => _then(v as _$_EmailChanged));

  @override
  _$_EmailChanged get _value => super._value as _$_EmailChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_EmailChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.emailChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginWithEmailAndPasswordPressed,
    required TResult Function() loginWithGooglePressed,
    required TResult Function() anonymousLoginPressed,
  }) {
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
  }) {
    return emailChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_LoginWithEmailAndPasswordPressed value)
        loginWithEmailAndPasswordPressed,
    required TResult Function(_LoginWithGooglePressed value)
        loginWithGooglePressed,
    required TResult Function(_AnonymousLoginPressed value)
        anonymousLoginPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements LoginEvent {
  const factory _EmailChanged(final String value) = _$_EmailChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$_PasswordChanged));

  @override
  _$_PasswordChanged get _value => super._value as _$_PasswordChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_PasswordChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginWithEmailAndPasswordPressed,
    required TResult Function() loginWithGooglePressed,
    required TResult Function() anonymousLoginPressed,
  }) {
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
  }) {
    return passwordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_LoginWithEmailAndPasswordPressed value)
        loginWithEmailAndPasswordPressed,
    required TResult Function(_LoginWithGooglePressed value)
        loginWithGooglePressed,
    required TResult Function(_AnonymousLoginPressed value)
        anonymousLoginPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements LoginEvent {
  const factory _PasswordChanged(final String value) = _$_PasswordChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$$_LoginWithEmailAndPasswordPressedCopyWith(
          _$_LoginWithEmailAndPasswordPressed value,
          $Res Function(_$_LoginWithEmailAndPasswordPressed) then) =
      __$$_LoginWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_LoginWithEmailAndPasswordPressedCopyWith<$Res> {
  __$$_LoginWithEmailAndPasswordPressedCopyWithImpl(
      _$_LoginWithEmailAndPasswordPressed _value,
      $Res Function(_$_LoginWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _$_LoginWithEmailAndPasswordPressed));

  @override
  _$_LoginWithEmailAndPasswordPressed get _value =>
      super._value as _$_LoginWithEmailAndPasswordPressed;
}

/// @nodoc

class _$_LoginWithEmailAndPasswordPressed
    implements _LoginWithEmailAndPasswordPressed {
  const _$_LoginWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'LoginEvent.loginWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginWithEmailAndPasswordPressed,
    required TResult Function() loginWithGooglePressed,
    required TResult Function() anonymousLoginPressed,
  }) {
    return loginWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
  }) {
    return loginWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPasswordPressed != null) {
      return loginWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_LoginWithEmailAndPasswordPressed value)
        loginWithEmailAndPasswordPressed,
    required TResult Function(_LoginWithGooglePressed value)
        loginWithGooglePressed,
    required TResult Function(_AnonymousLoginPressed value)
        anonymousLoginPressed,
  }) {
    return loginWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
  }) {
    return loginWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPasswordPressed != null) {
      return loginWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginWithEmailAndPasswordPressed implements LoginEvent {
  const factory _LoginWithEmailAndPasswordPressed() =
      _$_LoginWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$$_LoginWithGooglePressedCopyWith<$Res> {
  factory _$$_LoginWithGooglePressedCopyWith(_$_LoginWithGooglePressed value,
          $Res Function(_$_LoginWithGooglePressed) then) =
      __$$_LoginWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginWithGooglePressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_LoginWithGooglePressedCopyWith<$Res> {
  __$$_LoginWithGooglePressedCopyWithImpl(_$_LoginWithGooglePressed _value,
      $Res Function(_$_LoginWithGooglePressed) _then)
      : super(_value, (v) => _then(v as _$_LoginWithGooglePressed));

  @override
  _$_LoginWithGooglePressed get _value =>
      super._value as _$_LoginWithGooglePressed;
}

/// @nodoc

class _$_LoginWithGooglePressed implements _LoginWithGooglePressed {
  const _$_LoginWithGooglePressed();

  @override
  String toString() {
    return 'LoginEvent.loginWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginWithEmailAndPasswordPressed,
    required TResult Function() loginWithGooglePressed,
    required TResult Function() anonymousLoginPressed,
  }) {
    return loginWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
  }) {
    return loginWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
    required TResult orElse(),
  }) {
    if (loginWithGooglePressed != null) {
      return loginWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_LoginWithEmailAndPasswordPressed value)
        loginWithEmailAndPasswordPressed,
    required TResult Function(_LoginWithGooglePressed value)
        loginWithGooglePressed,
    required TResult Function(_AnonymousLoginPressed value)
        anonymousLoginPressed,
  }) {
    return loginWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
  }) {
    return loginWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
    required TResult orElse(),
  }) {
    if (loginWithGooglePressed != null) {
      return loginWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _LoginWithGooglePressed implements LoginEvent {
  const factory _LoginWithGooglePressed() = _$_LoginWithGooglePressed;
}

/// @nodoc
abstract class _$$_AnonymousLoginPressedCopyWith<$Res> {
  factory _$$_AnonymousLoginPressedCopyWith(_$_AnonymousLoginPressed value,
          $Res Function(_$_AnonymousLoginPressed) then) =
      __$$_AnonymousLoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AnonymousLoginPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_AnonymousLoginPressedCopyWith<$Res> {
  __$$_AnonymousLoginPressedCopyWithImpl(_$_AnonymousLoginPressed _value,
      $Res Function(_$_AnonymousLoginPressed) _then)
      : super(_value, (v) => _then(v as _$_AnonymousLoginPressed));

  @override
  _$_AnonymousLoginPressed get _value =>
      super._value as _$_AnonymousLoginPressed;
}

/// @nodoc

class _$_AnonymousLoginPressed implements _AnonymousLoginPressed {
  const _$_AnonymousLoginPressed();

  @override
  String toString() {
    return 'LoginEvent.anonymousLoginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AnonymousLoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() loginWithEmailAndPasswordPressed,
    required TResult Function() loginWithGooglePressed,
    required TResult Function() anonymousLoginPressed,
  }) {
    return anonymousLoginPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
  }) {
    return anonymousLoginPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? loginWithEmailAndPasswordPressed,
    TResult Function()? loginWithGooglePressed,
    TResult Function()? anonymousLoginPressed,
    required TResult orElse(),
  }) {
    if (anonymousLoginPressed != null) {
      return anonymousLoginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_LoginWithEmailAndPasswordPressed value)
        loginWithEmailAndPasswordPressed,
    required TResult Function(_LoginWithGooglePressed value)
        loginWithGooglePressed,
    required TResult Function(_AnonymousLoginPressed value)
        anonymousLoginPressed,
  }) {
    return anonymousLoginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
  }) {
    return anonymousLoginPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    TResult Function(_LoginWithGooglePressed value)? loginWithGooglePressed,
    TResult Function(_AnonymousLoginPressed value)? anonymousLoginPressed,
    required TResult orElse(),
  }) {
    if (anonymousLoginPressed != null) {
      return anonymousLoginPressed(this);
    }
    return orElse();
  }
}

abstract class _AnonymousLoginPressed implements LoginEvent {
  const factory _AnonymousLoginPressed() = _$_AnonymousLoginPressed;
}

/// @nodoc
mixin _$LoginState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      FormzStatus status,
      String? errorMessage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      FormzStatus status,
      String? errorMessage});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_LoginState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.status = FormzStatus.invalid,
      this.errorMessage});

  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final FormzStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final Email email,
      final Password password,
      final FormzStatus status,
      final String? errorMessage}) = _$_LoginState;

  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
