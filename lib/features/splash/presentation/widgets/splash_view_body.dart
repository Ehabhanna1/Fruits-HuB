import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/routes.dart';
import 'package:fruits_hub_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_hub_app/core/utils/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}



class _SplashViewBodyState extends State<SplashViewBody> {



  @override
  void initState() {
    excuteNavigator();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,  
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(AppImages.imagesPlant),
          ],
        ),
        SvgPicture.asset(AppImages.imagesLogo),
        SvgPicture.asset(AppImages.imagesSplashBottom),

      ],
    );
  }
  
  void excuteNavigator() {
    bool isOnBoardingViewSeen = SharedPrefs.getBool(kIsOnBoardingViewSeen) ?? false;
    Future.delayed(const Duration(seconds:3), () {
     if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, Routes.loginView);
      } else {
        Navigator.pushReplacementNamed(context, Routes.onBoardingView);
      }
    });
  }
}

