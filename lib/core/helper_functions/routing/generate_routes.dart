


import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/routes.dart';
import 'package:fruits_hub_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splashView:
      return MaterialPageRoute(builder: (_) => const SplashView());
    default:
      return MaterialPageRoute(builder: (_) => const SplashView());
  }
}