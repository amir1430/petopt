import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entity/email.dart';
import '../../../domain/entity/password.dart';
import '../../../domain/usecase/anonymous_sign_in_usecase.dart';
import '../../../domain/usecase/sign_in_with_email_password_usecase.dart';
import '../../../domain/usecase/sign_in_with_google_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required this.anonymousSignInUseCase,
    required this.signInWithEmailPasswordUsecase,
    required this.signInWithGoogleUseCase,
  }) : super(const _LoginState()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_LoginWithEmailAndPasswordPressed>(_onLoginWithEmailAndPasswordPressed);
    on<_LoginWithGooglePressed>(_onLoginWithGooglePressed);
    on<_AnonymousLoginPressed>(_onAnonymousLoginPressed);
  }

  final SignInWithEmailPasswordUsecase signInWithEmailPasswordUsecase;
  final SignInWithGoogleUseCase signInWithGoogleUseCase;
  final AnonymousSignInUseCase anonymousSignInUseCase;

  Future<void> _onEmailChanged(
    _EmailChanged event,
    Emitter<LoginState> emit,
  ) async {
    final email = Email.dirty(event.value);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate(
          [state.password, email],
        ),
      ),
    );
  }

  Future<void> _onPasswordChanged(
    _PasswordChanged event,
    Emitter<LoginState> emit,
  ) async {
    final password = Password.dirty(event.value);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate(
          [password, state.email],
        ),
      ),
    );
  }

  Future<void> _onLoginWithEmailAndPasswordPressed(
    _LoginWithEmailAndPasswordPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await signInWithEmailPasswordUsecase(
        email: state.email.value,
        password: state.password.value,
      );
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        status: FormzStatus.submissionFailure,
        errorMessage: e.message,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: FormzStatus.submissionFailure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onLoginWithGooglePressed(
    _LoginWithGooglePressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    try {
      await signInWithGoogleUseCase();
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        status: FormzStatus.submissionFailure,
        errorMessage: e.message,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: FormzStatus.submissionFailure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onAnonymousLoginPressed(
    _AnonymousLoginPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await anonymousSignInUseCase();
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on FirebaseAuthException catch (e) {
      emit(state.copyWith(
        status: FormzStatus.submissionFailure,
        errorMessage: e.message,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: FormzStatus.submissionFailure,
        errorMessage: e.toString(),
      ));
    }
  }
}
