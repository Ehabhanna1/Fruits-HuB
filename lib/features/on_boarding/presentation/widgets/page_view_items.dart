import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems({super.key, required this.image, required this.backgroundImage, required this.title, required this.subtitle});

  final String image, backgroundImage;
  final Widget title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
          
              Positioned.fill(child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill,)),
              Positioned(
                bottom: 0,
                left: 0,
                    right: 0,
                child: SvgPicture.asset(image,)),


                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text("تخط",style: TextStyles.regular16,),
                ),
          
              
            ],
          ),

        ),

        SizedBox(height: 60,),

        title,
        SizedBox(height: 24,),
        Text(subtitle,textAlign: TextAlign.center,),
      ],
    );
  }
}
     