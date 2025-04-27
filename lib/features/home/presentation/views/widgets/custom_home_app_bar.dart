import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fruits_hub_app/core/utils/app_images.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(AppImages.imagesProfileImage),
      title: Text('مرحبا...', style: TextStyles.regular16.copyWith(
        color: Color(0xFF949D9E)
      )),
      subtitle: Text('ايهاب', style: TextStyles.bold18.copyWith(
        color: Color(0xFF0C0D0D),
      )),
      trailing: Container(
        padding: EdgeInsets.all(15),
        decoration: ShapeDecoration(
          color: Color(0xFFEEF8ED),
          shape: OvalBorder()),

        child: SvgPicture.asset(AppImages.imagesNotification),
      ),
    );
  }
}