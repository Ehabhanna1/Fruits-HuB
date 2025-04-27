import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_images.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/feature_item_button.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width *0.9,
      child: Stack(
        children: [
          Image.asset(AppImages.imagesWatermelonTest),
          Container(
            child: Column(
              children: [
                Text("عروض العيد",style: TextStyles.regular16.copyWith(color: Colors.white),),
                Text(" خصم 25%",style: TextStyles.bold21,),
                FeatureItemButton(onPressed: () {},),
              ],
            ),
          ),
        ],
      ),
    );
  }
}