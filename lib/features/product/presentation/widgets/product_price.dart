
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Price', style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 15, color: ColorsData.BlackTextColor),),
              Text('with VAT,SD', style: GoogleFonts.inter(fontSize: 11, color: ColorsData.GreyTextColor),),
            ],
          ),
        ),
        Text('\$125', style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 17, color: ColorsData.BlackTextColor),)
      ],
    );
  }
}
