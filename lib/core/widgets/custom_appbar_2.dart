import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/basic_bar_icon.dart';

// pages: cart - reviews - add review - address - payment - add new card

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar2({
    super.key, required this.pagetitle, this.onbacktap,
  });
  final String pagetitle;
  final void Function()? onbacktap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        centerTitle: true,
        leadingWidth: 60,
        leading: Container(
          margin: EdgeInsets.only(left: 18),
          child: bar_buttons(
            backgroundcolor: ColorsData.HoverColor,
            iconORsvg: SvgPicture.asset(AssetsData.AbackIcon, width: 25,),
            ontap: onbacktap ?? () => Navigator.pop(context),
          ),
        ),
        title: Text(
          pagetitle,
          style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 17, color: ColorsData.BlackTextColor),
        ),
      ),
    );
  }
  
// This is required to define the height of the custom AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

