import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems({super.key, required this.image, required this.backgroundImage, required this.title, required this.subtitle, required this.isVisible});

  final String image, backgroundImage;
  final Widget title;
  final String subtitle;

  final bool isVisible;

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


                Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical:65),
                    child: Text("تخط",style: TextStyles.regular16,),
                  ),
                ),
          
              
            ],
          ),

        ),

        SizedBox(height: 60,),

        title,
        SizedBox(height: 24,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(subtitle,textAlign: TextAlign.center, 
          style: TextStyles.semiBold15.copyWith(
                color: const Color(0xFF4E5456),
              ),),
        ),
      ],
    );
  }
}
     