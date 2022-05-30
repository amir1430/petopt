import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entity/user.dart';
import '../../../domain/usecase/get_current_user_usecase.dart';
import '../../../domain/usecase/get_user_stream_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.getCurrentUserUsecase,
    required this.getUserStreamUsecase,
  }) : super(const _Unknown()) {
    on<_Started>(_onStarted);
  }

  final GetCurrentUserUsecase getCurrentUserUsecase;
  final GetUserStreamUsecase getUserStreamUsecase;

  Future<void> _onStarted(_Started event, Emitter<AuthState> emit) async {
    final user = await getCurrentUserUsecase();
    if (user == null) {
      emit(const _unAuthenticated());
    } else {
      emit(_authenticated(user: user));
    }

    await emit.forEach<AppUser?>(
      getUserStreamUsecase(),
      onData: (user) {
        if (user == null) {
          return const _unAuthenticated();
        } else {
          return _authenticated(user: user);
        }
      },
    );
  }
}
