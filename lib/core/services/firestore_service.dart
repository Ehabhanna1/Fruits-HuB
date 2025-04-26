import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub_app/core/services/database_service.dart';

class FireStoreService implements DataBaseService {

  FirebaseFirestore firestore = FirebaseFirestore.instance;



  @override
  Future<void> addData({required String path, required Map<String, dynamic> data}) async{
     await firestore.collection(path).add(data);
  }




}