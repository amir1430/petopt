import '../entity/user.dart';
import '../repository/auth_repository.dart';

class SignInWithGoogleUseCase {
  const SignInWithGoogleUseCase(this._repository);

  final IAuthRepository _repository;

  Future<AppUser> call() async => _repository.signInWithGoogle();
}
