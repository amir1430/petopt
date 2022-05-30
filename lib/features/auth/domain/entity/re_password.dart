import 'package:formz/formz.dart';

enum RePasswordValidationError { invalid }

class RePassword extends FormzInput<String, RePasswordValidationError> {
  const RePassword.pure({this.password = ''}) : super.pure('');

  const RePassword.dirty(this.password, [String value = ''])
      : super.dirty(value);

  final String password;

  @override
  RePasswordValidationError? validator(String? value) =>
      password == value ? null : RePasswordValidationError.invalid;
}
