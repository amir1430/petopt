import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petopt/features/auth/domain/entity/email.dart';
import 'package:petopt/features/auth/domain/entity/password.dart';
import 'package:petopt/features/auth/domain/entity/re_password.dart';
import 'package:petopt/features/auth/domain/usecase/create_user_with_email_and_password_usecase.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._createUserWithEmailAndPasswordUseCase)
      : super(const _RegisterState()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_RePasswordChanged>(_onRePasswordChanged);
    on<_RegisterRequsted>(_onRegisterRequsted);
  }

  final CreateUserWithEmailAndPasswordUseCase
      _createUserWithEmailAndPasswordUseCase;

  Future<void> _onEmailChanged(
    _EmailChanged event,
    Emitter<RegisterState> emit,
  ) async {
    final email = Email.dirty(event.value);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([
          email,
          state.password,
          state.rePassword,
        ]),
      ),
    );
  }

  Future<void> _onPasswordChanged(
    _PasswordChanged event,
    Emitter<RegisterState> emit,
  ) async {
    final password = Password.dirty(event.value);
    final rePassword = RePassword.dirty(password.value, state.rePassword.value);
    emit(
      state.copyWith(
        password: password,
        rePassword: rePassword,
        status: Formz.validate([
          state.email,
          password,
          rePassword,
        ]),
      ),
    );
  }

  Future<void> _onRePasswordChanged(
    _RePasswordChanged event,
    Emitter<RegisterState> emit,
  ) async {
    final password = Password.dirty(state.password.value);
    final rePassword = RePassword.dirty(state.password.value, event.value);
    emit(
      state.copyWith(
        rePassword: rePassword,
        status: Formz.validate([
          rePassword,
          state.email,
          password,
        ]),
      ),
    );
  }

  Future<void> _onRegisterRequsted(
    _RegisterRequsted event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await _createUserWithEmailAndPasswordUseCase(
        email: state.email.value,
        password: state.password.value,
      );
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure, errorMessage: '${e.message}'));
    } catch (e) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure, errorMessage: '$e'));
    }
  }
}
