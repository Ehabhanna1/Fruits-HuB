import 'package:flutter/material.dart';

import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_images.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';
import 'package:fruits_hub_app/core/utils/spacing.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
        color: Color(0xFFF3F5F7),
        borderRadius: BorderRadius.circular(16), 
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border))),


            Positioned.fill(child: Column(
           
              children: [
                verticalSpacing(25),
                Image.asset(AppImages.imagesWatermelonTest),
                verticalSpacing(20),
                ListTile(
                  title: Text('بطيخ',style: TextStyles.semiBold18),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: '20جنية ',style: TextStyles.bold15.copyWith(
                          color: AppColors.secondaryColor,
                        )),
                        TextSpan(text: '/',style: TextStyles.bold15.copyWith(
                          color: AppColors.lightSecondaryColor,
                        )),
                        TextSpan(text: ' ',style: TextStyles.bold15.copyWith(
                          color: AppColors.lightSecondaryColor,
                        )),
                        TextSpan(text: ' الكيلو',style: TextStyles.regular16.copyWith(
                          color: AppColors.lightSecondaryColor,
                        )),
                      ]
                    )
                  ),
                  trailing: const CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                
                ),

                
              ],
            ))
          
        ], 
      ),
    );
  }
} 