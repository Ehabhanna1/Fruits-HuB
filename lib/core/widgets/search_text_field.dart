import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub_app/core/utils/app_images.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            offset: Offset(0, 3),
            blurRadius: 6,
            spreadRadius: 3,
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        
        decoration: InputDecoration(
          
          prefixIcon: SizedBox(
            width: 30,
            child: Center(child: SvgPicture.asset(AppImages.imagesSearchIcon))),
          suffixIcon: SizedBox(
            width: 30,
             child: Center(child: SvgPicture.asset(AppImages.imagesFilter,))),
          hintText: 'ابحث عن...',
          hintStyle: TextStyles.regular15.copyWith(
            color: Color(0xFF949D9E)
          ),
          filled: true,
          fillColor: Colors.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
      ),
        ),
    );
}

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
       borderRadius: BorderRadius.circular(5),
       borderSide: BorderSide(
        width: 1,
        color: Colors.white), 

    
    );
  }
      
  }