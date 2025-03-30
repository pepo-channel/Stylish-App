

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class VisaCardItem extends StatelessWidget {
  const VisaCardItem({
    super.key, required this.visaimage,
  });
  final String visaimage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8, // width 300
      height: MediaQuery.of(context).size.width * 0.3374384236453202, // height 185
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(visaimage),fit: BoxFit.cover ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // name
              Text(
                'Hemendra Mali',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              // visa icon
              SvgPicture.asset(AssetsData.AVisa, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),),
            ],
          ),
          SizedBox(height: 45,),
          Text(
            'Visa Classic',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            '5254 **** **** 7690',
            style: GoogleFonts.inter(
              fontSize: 15,
              color: Colors.white,
              // letterSpacing: 14,
              letterSpacing: 7,
            ),
          ),
          SizedBox(height: 15,),
          Text(
            '\$3,763.87',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}