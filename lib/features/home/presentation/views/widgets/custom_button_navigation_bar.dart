import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub_app/core/utils/app_images.dart';

class CustomButtonNavigationBar extends StatelessWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 100,
      decoration: ShapeDecoration(
        color: Colors.white,
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          

        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
           
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0
          ),
        ]
        ),
        child: InActiveIcon(image: AppImages.imagesVuesaxOutlineHome),
    );
  }
}  
 

class InActiveIcon extends StatelessWidget {
  const InActiveIcon({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}


class ActiveIcon extends StatelessWidget {
  const ActiveIcon({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
