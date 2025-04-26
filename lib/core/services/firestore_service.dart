import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub_app/core/services/database_service.dart';
import 'package:fruits_hub_app/features/auth/data/models/user_model.dart';
import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub_app/generated/l10n.dart';

class FireStoreService implements DataBaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  }) async{
   var data = await firestore.collection(path).doc(documentId).get();

   return data.data() as Map<String, dynamic>;
  }
}
