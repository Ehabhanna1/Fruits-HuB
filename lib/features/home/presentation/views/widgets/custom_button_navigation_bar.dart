import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/home/domain/entities/buttom_nav_bar_entity.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/navigation_bar_items.dart';

class CustomButtonNavigationBar extends StatefulWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  State<CustomButtonNavigationBar> createState() => _CustomButtonNavigationBarState();
}

class _CustomButtonNavigationBarState extends State<CustomButtonNavigationBar> {

  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
    //  width: 375,
      height: 90,
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
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bottomNavBarList.asMap().entries.map((e) => 
       
        Expanded(
          flex: e.key == selectedIndex ? 3: 2,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = e.key;
              });
            },
            child: NavigationBarItems(
              isSelected: e.key == selectedIndex,
               bottomNavBarEntity: e.value,),
          ),
        )).toList(),
      ),
    );
  }
}



