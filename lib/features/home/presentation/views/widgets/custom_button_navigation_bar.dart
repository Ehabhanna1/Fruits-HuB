import 'package:flutter/material.dart';

class CustomButtonNavigationBar extends StatelessWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        )
    );
  }
}  