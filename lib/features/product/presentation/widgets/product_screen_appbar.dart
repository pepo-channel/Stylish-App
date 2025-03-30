
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/basic_bar_icon.dart';

class ProductScreeenAppBar extends StatelessWidget {
  const ProductScreeenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        bar_buttons(
          backgroundcolor: Colors.white,
          iconORsvg: SvgPicture.asset(AssetsData.AbackIcon, width: 25, height: 25,),
          ontap: () {
            Navigator.pop(context);
          },
        ),
        bar_buttons(
          backgroundcolor: Colors.white,
          iconORsvg: SvgPicture.asset(AssetsData.AmarketIcon, width: 25, height: 25,),
          ontap: () {
            Navigator.pushNamed(context, PagesName.CartScreen); 
          },
        ),
      ],
      ),
    );
  }
}