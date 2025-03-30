
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/basic_bar_icon.dart';

// pages: home sreen - brand screen - whishlist screen

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppbar({super.key, required this.centerwidget, required this.leftsvg, this.leftsvg_ontap});

  final Widget centerwidget;
  final String leftsvg;
  final void Function()? leftsvg_ontap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            bar_buttons(
              backgroundcolor: ColorsData.HoverColor,
              iconORsvg: SvgPicture.asset(leftsvg, width: 25, height: 25,),
              ontap: leftsvg_ontap,
            ),
            centerwidget ,
            bar_buttons(
              backgroundcolor: ColorsData.HoverColor,
              iconORsvg: SvgPicture.asset(AssetsData.AmarketIcon, width: 25, height: 25,),
              ontap: () {
                // Navigator.pushNamed(context, PagesName.CartScreen);
                Navigator.pushNamed(context, PagesName.HomeScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
  
// This is required to define the height of the custom AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}