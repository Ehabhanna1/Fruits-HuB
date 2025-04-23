import 'package:firebase_auth/firebase_auth.dart';

class UserEntity {
  final String name;
  final String email;
  final String password;

  UserEntity({
    required this.name,
    required this.email,
    required this.password,
  });
}