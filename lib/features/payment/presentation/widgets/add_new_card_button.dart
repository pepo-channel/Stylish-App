
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class AddNewCardButton extends StatelessWidget {
  const AddNewCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, PagesName.AddCardScreen),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width - 40,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xffF6F2FF),
          border: Border.all(width: 2, color: ColorsData.BasicColor),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 5,
            children: [
              SvgPicture.asset(AssetsData.AAddIcon),
              Text(
                'Add new card',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: ColorsData.BasicColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}