import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';

abstract class DataBaseService {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  });

  Future<UserEntity> getUserData({required String path, required String uId});
}
