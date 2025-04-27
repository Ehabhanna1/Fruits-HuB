import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

import 'package:fruits_hub_app/core/utils/app_images.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';
import 'package:fruits_hub_app/core/utils/spacing.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/feature_item_button.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width ,
      child: AspectRatio(
        aspectRatio: 342/158,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              right: MediaQuery.sizeOf(context).width *0.4,
              top: 0,
              child: SvgPicture.asset(AppImages.imagesPageViewItem2Image,fit: BoxFit.fill,)),
            Container(
              width: MediaQuery.sizeOf(context).width *0.5,
              decoration:BoxDecoration(
                image: DecorationImage(
                  image: svg.Svg(AppImages.imagesFeaturedItemBackground),
                  fit: BoxFit.fill,
                ),
              ) ,
              child: Padding(
                padding: const EdgeInsets.only(right: 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpacing(20),
                    Text("عروض العيد",style: TextStyles.regular16.copyWith(color: Colors.white),),
                     const Spacer(),
                    Text("خصم 25%",style: TextStyles.bold21.copyWith(color: Colors.white),),
                    verticalSpacing(13),
                    FeatureItemButton(onPressed: () {},),
                    verticalSpacing(30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
              