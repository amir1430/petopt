import 'package:petopt/features/auth/domain/repository/auth_repository.dart';

import '../entity/user.dart';

class CreateUserWithEmailAndPasswordUseCase {
  const CreateUserWithEmailAndPasswordUseCase(this._repository);

  final IAuthRepository _repository;

  Future<AppUser> call({
    required String email,
    required String password,
  }) async =>
      _repository.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
}
