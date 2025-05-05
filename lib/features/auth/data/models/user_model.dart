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


  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] ?? 'No Name',
      email: json['email'] ?? 'No Email',
      uId: json['uId'] ?? 'No UId',
    );
  }

  factory UserModel.fromEntity(UserEntity userEntity) {
    return UserModel(
     name: userEntity.name,
     email: userEntity.email,
     uId: userEntity.uId,
    );
  }

  toMap (){
    return {
      'name': name,
      'email': email,
      'password': uId,
    };
  }



}