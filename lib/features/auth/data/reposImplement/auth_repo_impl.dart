import 'package:dartz/dartz.dart';
import 'package:fruits_hub_app/core/errors/exceptions.dart';
import 'package:fruits_hub_app/core/errors/failuer.dart';
import 'package:fruits_hub_app/core/services/firebase_auth_service.dart';
import 'package:fruits_hub_app/features/auth/data/models/user_model.dart';
import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {

   final FirebaseAuthService firebaseAuthService;
  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failuer, UserEntity>> createUserWithEmailAndPassword(String email, String password, String name) async {
    try {
  var user = await firebaseAuthService.createUserWithEmailAndPassword(email: email, password: password);
  // Note: The 'name' parameter is removed as it is not part of the interface.
  
  return Right(UserModel.fromFirebaseUser(user));
} on CustomException catch (e) {
  return left(ServerFailuer(e.message));
}catch (e) {
  return left(ServerFailuer("لقد حدث خطأ  أثناء إنشاء الحساب"));
  }
 
}
  
}