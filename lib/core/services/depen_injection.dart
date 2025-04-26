

import 'package:fruits_hub_app/core/services/database_service.dart';
import 'package:fruits_hub_app/core/services/firebase_auth_service.dart';
import 'package:fruits_hub_app/core/services/firestore_service.dart';
import 'package:fruits_hub_app/features/auth/data/reposImplement/auth_repo_impl.dart';
import 'package:fruits_hub_app/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;


void setupLocator() {
  // Register your services, repositories, and cubits here
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DataBaseService>(FireStoreService());
  getIt.registerSingleton<AuthRepo>( AuthRepoImpl(
    firebaseAuthService: getIt<FirebaseAuthService>(),
    dataBaseService: getIt<DataBaseService>(),
  
  ));
  // locator.registerLazySingleton<SomeService>(() => SomeServiceImpl());
}