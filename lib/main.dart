import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/generate_routes.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/routes.dart';
import 'package:fruits_hub_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(

        localizationsDelegates: [
                S.delegate,
                 GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: Locale("ar"),
        
        debugShowCheckedModeBanner: false,
        
        title: 'Fruits Hub',
        
        onGenerateRoute: generateRoute,
        initialRoute: Routes.splashView,
      ),
    );
  }
}

