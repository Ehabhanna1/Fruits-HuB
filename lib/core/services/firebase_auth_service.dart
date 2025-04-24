import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub_app/core/errors/exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}");
      if (e.code == 'weak-password') {
        throw CustomException(message: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: "هذا البريد الالكتروني موجود بالفعل.");
      }else if (e.code == 'network-request-field'){
        throw CustomException(message: "لتأكد من اتصالك بالانترنت");
      }
       else {
        throw CustomException(message: "لقد حدث خطأ أثناء إنشاء الحساب");
      }
    } catch (e) {
      throw CustomException(message: "لقد حدث خطأ أثناء إنشاء الحساب");
    }
  }


  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}");
      if (e.code == 'user-not-found') {
        throw CustomException(message: "لا يوجد حساب مرتبط بهذا البريد الالكتروني.");
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: "كلمة المرور غير صحيحة.");
      } else {
        throw CustomException(message: "لقد حدث خطأ أثناء تسجيل الدخول");
      }
    } catch (e) {
      log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}");
      throw CustomException(message: "لقد حدث خطأ أثناء تسجيل الدخول");
    }
  }






}
