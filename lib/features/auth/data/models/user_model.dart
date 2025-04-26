import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';

class UserModel  extends UserEntity{
  UserModel({required super.name, required super.email, required super.uId});



  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      name: user.displayName ?? 'No Name',
      email: user.email ?? 'No Email',
      uId: 'No Password', // Password is not retrievable from Firebase User
    );
  }
}