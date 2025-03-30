
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, PagesName.PaymentScreen),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Method',
                  style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 17, color: ColorsData.BlackTextColor),
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsData.HoverColor,
                ),
                child: Center(child: SvgPicture.asset(AssetsData.AVisa),),
              ),
              SizedBox(width: 15,),
              Column(
                children: [
                  Text(
                    'Visa Classic',
                    style: GoogleFonts.inter(fontSize: 15, color: ColorsData.BlackTextColor),
                  ),
                  Text(
                    '**** 7690',
                    style: GoogleFonts.inter(fontSize: 13, color: ColorsData.GreyTextColor),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xff4AC76D),
                child: Center(child: Icon(Icons.check, size: 15, color: Colors.white,),),
              ),
            ],
          )
        ],
      ),
    );
  }
}