import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub_app/core/utils/app_images.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: ShapeDecoration(
        color: Color(0xFFEEF8ED),
        shape: OvalBorder()),
    
      child: SvgPicture.asset(AppImages.imagesNotification),
    );
  }
}