import '../entity/user.dart';

abstract class IAuthRepository {
  const IAuthRepository();
  Stream<AppUser?> userStream();

  AppUser? currentUser();

  Future<AppUser> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<AppUser> signInWithGoogle();

  Future<AppUser> anonymousSignIn();

  Future<AppUser> createUserWithEmailAndPassword({
    // required String username,
    required String email,
    required String password,
  });
}
