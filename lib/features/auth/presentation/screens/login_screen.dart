import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:petopt/core/widgets/text_field.dart';
import 'package:petopt/features/auth/presentation/controller/login/login_bloc.dart';
import '../../../../sl.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginBloc>(),
      child: Builder(
        builder: (context) {
          return BlocListener<LoginBloc, LoginState>(
            listenWhen: (previous, current) =>
                current.status == FormzStatus.submissionFailure,
            listener: (context, state) {
              if (state.errorMessage != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${state.errorMessage}'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            child: Scaffold(
              body: Center(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  shrinkWrap: true,
                  children: [
                    BlocTextField<LoginBloc, LoginState>(
                      buildWhen: (previous, current) =>
                          previous.email != current.email,
                      onChanged: (value) => context
                          .read<LoginBloc>()
                          .add(LoginEvent.emailChanged(value)),
                      errorText: (state) =>
                          state.email.invalid ? 'Invalid Email' : null,
                      lableText: 'Email',
                    ),
                    const SizedBox(height: 12),
                    BlocTextField<LoginBloc, LoginState>(
                      buildWhen: (previous, current) =>
                          previous.password != current.password,
                      onChanged: (value) => context
                          .read<LoginBloc>()
                          .add(LoginEvent.passwordChanged(value)),
                      errorText: (state) =>
                          state.password.invalid ? 'Invalid Password' : null,
                      lableText: 'Password',
                    ),
                    const SizedBox(height: 12),
                    const _LoginBtn(),
                    const SizedBox(height: 12),
                    const _RegisterBtn(),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [_GoogleLoginBtn(), _AnonymouseLoginBtn()],
                    )
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}

class _LoginBtn extends StatelessWidget {
  const _LoginBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status == FormzStatus.invalid
              ? null
              : () {
                  FocusScope.of(context).unfocus();
                  context
                      .read<LoginBloc>()
                      .add(const LoginEvent.loginWithEmailAndPasswordPressed());
                },
          child: state.status == FormzStatus.submissionInProgress
              ? const CircularProgressIndicator()
              : const Text('Login'),
        );
      },
    );
  }
}

class _RegisterBtn extends StatelessWidget {
  const _RegisterBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text('Register'),
      onPressed: () => context.pushNamed('register'),
    );
  }
}

class _GoogleLoginBtn extends StatelessWidget {
  const _GoogleLoginBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context
          .read<LoginBloc>()
          .add(const LoginEvent.loginWithGooglePressed()),
      icon: const Icon(Ionicons.logo_google),
    );
  }
}

class _AnonymouseLoginBtn extends StatelessWidget {
  const _AnonymouseLoginBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context
          .read<LoginBloc>()
          .add(const LoginEvent.anonymousLoginPressed()),
      icon: const Icon(Ionicons.person_outline),
    );
  }
}
