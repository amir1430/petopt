import '../entity/user.dart';
import '../repository/auth_repository.dart';

class GetUserStreamUsecase {
  const GetUserStreamUsecase(this._reposirory);

  final IAuthRepository _reposirory;

  Stream<AppUser?> call() => _reposirory.userStream();
}
