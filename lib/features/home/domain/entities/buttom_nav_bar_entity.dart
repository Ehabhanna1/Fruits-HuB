import 'package:fruits_hub_app/core/utils/app_images.dart';

class BottomNavBarEntity {
  final String inActiveIcon;
  final String activeIcon;
  final String name;

  BottomNavBarEntity({
    required this.inActiveIcon,
    required this.activeIcon,
    required this.name,
  });

}


List<BottomNavBarEntity>get bottomNavBarList => [
  BottomNavBarEntity(
    inActiveIcon: AppImages.imagesVuesaxOutlineHome,
    activeIcon: AppImages.imagesVuesaxBoldHome,
    name: 'الرئيسية',
    
  ),
  BottomNavBarEntity(
    inActiveIcon: AppImages.imagesVuesaxOutlineProducts,
    activeIcon: AppImages.imagesVuesaxBoldProducts,
    name: 'المنتجات',
  ),
  BottomNavBarEntity(
    inActiveIcon: AppImages.imagesVuesaxOutlineShoppingCart,
    activeIcon: AppImages.imagesVuesaxBoldShoppingCart,
    name: 'سلة المشتريات',
  ),
  BottomNavBarEntity(
    inActiveIcon: AppImages.imagesVuesaxOutlineUser,
    activeIcon: AppImages.imagesVuesaxBoldUser,
    name: 'حسابي',
  ),
];