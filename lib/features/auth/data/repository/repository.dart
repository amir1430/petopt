import '../data_source/data_source.dart';
import '../../domain/entity/user.dart';
import '../../domain/repository/auth_repository.dart';

class AuthRepository extends IAuthRepository {
  const AuthRepository(this._dataSource);

  final IAuthDataSource _dataSource;

  @override
  AppUser? currentUser() => _dataSource.currentUser();

  @override
  Stream<AppUser?> userStream() => _dataSource.userStream();

  @override
  Future<AppUser> createUserWithEmailAndPassword({
    // required String username,
    required String email,
    required String password,
  }) =>
      _dataSource.createUserWithEmailAndPassword(
          email: email, password: password);

  @override
  Future<AppUser> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _dataSource.signInWithEmailAndPassword(email: email, password: password);

  @override
  Future<AppUser> anonymousSignIn() async => _dataSource.anonymousSignIn();

  @override
  Future<AppUser> signInWithGoogle() async => _dataSource.signInWithGoogle();
}
