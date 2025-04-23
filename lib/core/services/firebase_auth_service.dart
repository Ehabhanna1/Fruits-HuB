import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub_app/core/errors/exceptions.dart';

class FirebaseAuthService {

  Future<User> createUserWithEmailAndPassword({ required String email,required String password}) async {
    try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
  return credential.user!;
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    throw CustomException(message: "The password provided is too weak."); 
  } else if (e.code == 'email-already-in-use') {
    throw CustomException(message: "هذا البريد الالكتروني موجود بالفعل.");
  }else{
    throw CustomException(message: "لقد حدث خطأ أثناء إنشاء الحساب");
  }
} catch (e) {
  throw CustomException(message: "لقد حدث خطأ أثناء إنشاء الحساب");
}
  }
}