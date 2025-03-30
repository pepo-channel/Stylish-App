
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class WhishlistEditButton extends StatelessWidget {
  const WhishlistEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 
      },
      child: Container(
        width: 68,
        height: 37,
        decoration: BoxDecoration(
          color: ColorsData.HoverColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsData.AWhishlistEditIcon, colorFilter: ColorFilter.mode(ColorsData.BlackTextColor, BlendMode.srcIn),),
              SizedBox(width: 5,),
              Text( 
                'Edit',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: ColorsData.BlackTextColor, 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}