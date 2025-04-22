import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText, required this.keyboardType, this.suffixIcon});

  final String hintText;
  final TextInputType keyboardType;

  final Widget? suffixIcon;
 


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: TextStyles.bold15.copyWith(
          color: Color(0xFF949D9E)
        ),
        filled: true,
        fillColor: Color(0xFFF9FAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
    ),
  );
}

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
       borderRadius: BorderRadius.circular(5),
       borderSide: BorderSide(
        width: 1.5,
        color: Color(0xFFE6E9E9)), 

    
    );
  }
      
  }
 