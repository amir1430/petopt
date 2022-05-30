import '../entity/user.dart';
import '../repository/auth_repository.dart';

class AnonymousSignInUseCase {
  const AnonymousSignInUseCase(this._repository);

  final IAuthRepository _repository;

  Future<AppUser> call() async => _repository.anonymousSignIn();
}
