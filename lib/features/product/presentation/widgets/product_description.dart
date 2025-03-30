import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Description', style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 17, color: ColorsData.BlackTextColor),),
        SizedBox(height: 10,),
        Text(
          'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with fdgdfgdfgdfgdfgdgdfbdfbfbdfbd',
          style: GoogleFonts.inter(fontSize: 15, color: ColorsData.GreyTextColor),
          maxLines: 3,
          overflow: TextOverflow.visible,
        ),
      ],
    );
  }
}