import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub_app/core/utils/assets/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,  
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppImages.imagesPlant),
          ],
        ),
        SvgPicture.asset(AppImages.imagesLogo),
        SvgPicture.asset(AppImages.imagesSplashBottom),

      ],
    );
  }
}