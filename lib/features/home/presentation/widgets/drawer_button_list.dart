import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/features/home/presentation/widgets/drawer_button_item.dart';

class DrawerButtonList extends StatelessWidget {
  const DrawerButtonList({super.key});

  final List icons = const [
    AssetsData.ASunIcon,
    AssetsData.ALockIcon,
    AssetsData.ACartNavBarIcon,
    AssetsData.AmarketIcon,
    AssetsData.AWhishlistNavBarIcon,
    AssetsData.ASettingIcon,
  ];

  final List texts = const [
    'Account Information',
    'Password',
    'Order',
    'My Cards',
    'Wishlist',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    List ontaps = [
      () => Navigator.pushNamed(context, PagesName.HomeScreen),
      () => Navigator.pushNamed(context, PagesName.HomeScreen),
      () => Navigator.pushNamed(context, PagesName.HomeScreen),
      () => Navigator.pushNamed(context, PagesName.HomeScreen),
      () => Navigator.pushNamed(context, PagesName.HomeScreen),
      () => Navigator.pushNamed(context, PagesName.HomeScreen),
    ];
    return Expanded(
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        itemCount: texts.length,
        separatorBuilder: (context, index) => SizedBox(height: 5,),
        itemBuilder: (context, index) {
          return DrawerButtonItem(
            icon: icons[index],
            text: texts[index],
            color: ColorsData.BlackTextColor,
            ontap: ontaps[index],
          );
        },
      ),
    );
  }
}