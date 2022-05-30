import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../model/app_user_model.dart';

abstract class IAuthDataSource {
  AppUserModel? currentUser();
  Stream<AppUserModel?> userStream();
  Future<AppUserModel> createUserWithEmailAndPassword({
    // required String userName,
    required String email,
    required String password,
  });
  Future<AppUserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<AppUserModel> anonymousSignIn();
  Future<AppUserModel> signInWithGoogle();
}

class AuthDataSource implements IAuthDataSource {
  const AuthDataSource({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
    required GoogleSignIn googleSignIn,
  })  : _firebaseAuth = firebaseAuth,
        _firestore = firestore,
        _googleSignIn = googleSignIn;

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;

  @override
  AppUserModel? currentUser() {
    if (_firebaseAuth.currentUser == null) {
      return null;
    }
    return AppUserModel.fromFirebaseUser(_firebaseAuth.currentUser!);
  }

  @override
  Stream<AppUserModel?> userStream() => _firebaseAuth
      .userChanges()
      .map((user) => user == null ? null : AppUserModel.fromFirebaseUser(user));

  @override
  Future<AppUserModel> createUserWithEmailAndPassword({
    // required String userName,
    required String email,
    required String password,
  }) async {
    try {
      final authUser = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = AppUserModel.fromFirebaseUser(authUser.user!);
      await _firestore.collection('users').add(user.toMap());
      return user;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AppUserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final authUser = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final dbUser = await _firestore
          .collection('users')
          .where('uid', isEqualTo: authUser.user!.uid)
          .get();

      return AppUserModel.fromQueryDocumentSnapshot(dbUser.docs[0]);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AppUserModel> anonymousSignIn() async {
    final authUser = await _firebaseAuth.signInAnonymously();
    final user = AppUserModel.fromFirebaseUser(authUser.user!);
    return user;
  }

  @override
  Future<AppUserModel> signInWithGoogle() async {
    try {
      late final AuthCredential credential;
      if (kIsWeb) {
        final googleProvider = GoogleAuthProvider();
        final userCredential = await _firebaseAuth.signInWithPopup(
          googleProvider,
        );
        credential = userCredential.credential!;
      } else {
        final googleUser = await _googleSignIn.signIn();
        final googleAuth = await googleUser!.authentication;
        credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
      }

      final authUser = await _firebaseAuth.signInWithCredential(credential);
      final user = AppUserModel.fromFirebaseUser(authUser.user!);
      return user;
    } catch (_) {
      rethrow;
      // throw const LogInWithGoogleFailure();
    }
  }
}
