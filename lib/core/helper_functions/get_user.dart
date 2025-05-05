import 'dart:convert';

import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_hub_app/features/auth/data/models/user_model.dart';
import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';

UserEntity getUser() {

  var jsonString = SharedPrefs.getString(kUserData);
  
  var userEntity = UserModel.fromJson(jsonDecode(jsonString));

  return userEntity;
}