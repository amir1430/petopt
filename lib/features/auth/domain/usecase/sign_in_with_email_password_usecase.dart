import '../entity/user.dart';
import '../repository/auth_repository.dart';

class SignInWithEmailPasswordUsecase {
  const SignInWithEmailPasswordUsecase(this._repository);

  final IAuthRepository _repository;

  Future<AppUser> call({
    required String email,
    required String password,
  }) async =>
      _repository.signInWithEmailAndPassword(email: email, password: password);
}
