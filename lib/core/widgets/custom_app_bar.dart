
  import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
    return AppBar(
      
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(title, style: TextStyles.bold21),
      centerTitle: true,
    );
  }
