
import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/home/domain/entities/buttom_nav_bar_entity.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/active_nav_bar_items.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/inactive_nav_bar_items.dart';

class NavigationBarItems extends StatelessWidget {
  const NavigationBarItems({super.key, required this.isSelected, required this.bottomNavBarEntity});

  final bool isSelected;
  final BottomNavBarEntity bottomNavBarEntity;

  @override
  Widget build(BuildContext context) {
    return isSelected ? ActiveIcon(image: bottomNavBarEntity.activeIcon,text: bottomNavBarEntity.name) : InActiveIcon(image: bottomNavBarEntity.inActiveIcon);
  }
}
