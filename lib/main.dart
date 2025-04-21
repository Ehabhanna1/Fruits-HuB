import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/generate_routes.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/routes.dart';


void main() {
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
      title: 'Fruits Hub',
      
      onGenerateRoute: generateRoute,
      initialRoute: Routes.splashView,
    );
  }
}

