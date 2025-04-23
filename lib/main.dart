import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/generate_routes.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/routes.dart';
import 'package:fruits_hub_app/core/services/custom_bloc_observer.dart';
import 'package:fruits_hub_app/core/services/depen_injection.dart';
import 'package:fruits_hub_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/firebase_options.dart';
import 'package:fruits_hub_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,

);
 await SharedPrefs.init();
 setupLocator();
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
          theme: ThemeData(
          fontFamily: 'Cairo',
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        ) ,
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

