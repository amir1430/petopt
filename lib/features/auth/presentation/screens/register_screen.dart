import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:petopt/core/widgets/text_field.dart';
import 'package:petopt/features/auth/presentation/controller/register/register_bloc.dart';
import 'package:petopt/sl.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => sl<RegisterBloc>(),
      child: BlocListener<RegisterBloc, RegisterState>(
        listenWhen: (previous, current) =>
            current.status == FormzStatus.submissionFailure,
        listener: (context, state) {
          if (state.status == FormzStatus.submissionFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${state.errorMessage}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Builder(builder: (context) {
          final registerBloc = context.read<RegisterBloc>();
          return Scaffold(
            body: Center(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                shrinkWrap: true,
                children: [
                  BlocTextField<RegisterBloc, RegisterState>(
                    onChanged: (value) =>
                        registerBloc.add(RegisterEvent.emailChanged(value)),
                    buildWhen: (previous, current) =>
                        previous.email != current.email,
                    errorText: (state) =>
                        state.email.invalid ? 'Invalid Email' : null,
                    lableText: 'Email',
                  ),
                  // const _EmailInput(),
                  const SizedBox(height: 12),
                  BlocTextField<RegisterBloc, RegisterState>(
                    buildWhen: (previous, current) =>
                        previous.password != current.password,
                    onChanged: (value) =>
                        registerBloc.add(RegisterEvent.passwordChanged(value)),
                    errorText: (state) =>
                        state.password.invalid ? 'Invalid Password' : null,
                    lableText: 'Password',
                  ),
                  const SizedBox(height: 12),
                  BlocTextField<RegisterBloc, RegisterState>(
                    buildWhen: (previous, current) =>
                        previous.rePassword != current.rePassword ||
                        previous.password != current.password,
                    onChanged: (value) => registerBloc
                        .add(RegisterEvent.rePasswordChanged(value)),
                    errorText: (state) => state.rePassword.invalid
                        ? 'Password is not the same'
                        : null,
                    lableText: 'Re-Password',
                  ),
                  const SizedBox(height: 12),
                  const _RegisterBtn(),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _RegisterBtn extends StatelessWidget {
  const _RegisterBtn();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      // buildWhen: (previous, current) => current.status != current.status,
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status == FormzStatus.invalid
              ? null
              : () {
                  FocusScope.of(context).unfocus();
                  context
                      .read<RegisterBloc>()
                      .add(const RegisterEvent.registerRequsted());
                },
          child: const Text('Register'),
        );
      },
    );
  }
}
