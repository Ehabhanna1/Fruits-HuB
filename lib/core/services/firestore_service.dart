import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub_app/core/services/database_service.dart';
import 'package:fruits_hub_app/features/auth/data/models/user_model.dart';
import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';

class FireStoreService implements DataBaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await firestore.collection(path).add(data);
  }

  @override
  Future<UserEntity> getUserData({
    required String path,
    required String uId,
  }) async{
   var data = await firestore.collection(path).doc(uId).get();

   return UserModel.fromJson(data.data() as Map<String, dynamic>);
  }
}
