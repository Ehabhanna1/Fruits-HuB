  import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';
import 'package:fruits_hub_app/core/widgets/notification_widget.dart';

AppBar CustomAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title:  Text('الاكثر مبيعا',style: TextStyles.semiBold18,),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 16),
        child: NotificationWidget(),
        
        ),
      ],
    );
  }
