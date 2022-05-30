import 'package:equatable/equatable.dart';

class AppUser extends Equatable {
  const AppUser({
    required this.email,
    required this.username,
    required this.isAnonymous,
    required this.uid,
    this.profilePicture,
  });

  final String? email;
  final String username;
  final bool isAnonymous;
  final String uid;
  final String? profilePicture;

  @override
  List<Object?> get props {
    return [
      email,
      username,
      isAnonymous,
      uid,
      profilePicture,
    ];
  }
}
