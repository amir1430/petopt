import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/entity/user.dart';

class AppUserModel extends AppUser {
  const AppUserModel({
    required super.email,
    required super.isAnonymous,
    required super.uid,
    required super.profilePicture,
    required super.username,
  });

  // const AppUserModel.pure({
  //   required super.email,
  //   required super.isAnonymous,
  //   required super.uid,
  //   super.username = '',
  // });

  factory AppUserModel.fromFirebaseUser(User user) {
    late String username;
    if (user.displayName != null) {
      username = user.displayName!;
    } else if (!user.isAnonymous && user.email != null) {
      username = user.email!;
    } else {
      username = 'anonymous';
    }
    return AppUserModel(
      email: user.email,
      isAnonymous: user.isAnonymous,
      uid: user.uid,
      profilePicture: user.photoURL,
      username: username,
    );
  }

  factory AppUserModel.fromQueryDocumentSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
    return AppUserModel(
      email: documentSnapshot['email'] ?? '',
      isAnonymous: documentSnapshot['isAnonymous'] ?? false,
      uid: documentSnapshot['uid'] ?? '',
      profilePicture: documentSnapshot['profilePicture'] ?? '',
      username: documentSnapshot['username'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'profilePicture': profilePicture,
      'username': username,
    };
  }
}
