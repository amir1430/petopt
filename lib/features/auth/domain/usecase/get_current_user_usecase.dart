import '../entity/user.dart';
import '../repository/auth_repository.dart';

class GetCurrentUserUsecase {
  const GetCurrentUserUsecase(this._repository);

  final IAuthRepository _repository;

  Future<AppUser?> call() async => _repository.currentUser();
}
