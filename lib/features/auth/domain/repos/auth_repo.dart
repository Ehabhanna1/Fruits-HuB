import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {

  Future<UserEntity> createUserWithEmailAndPassword(String email, String password);
  Future<UserEntity> signUpWithEmailAndPassword(String email, String password);


}