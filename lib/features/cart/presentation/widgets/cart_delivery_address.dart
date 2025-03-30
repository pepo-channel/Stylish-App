
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, PagesName.AddressScreen),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Address',
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
                  image: DecorationImage(image: AssetImage(AssetsData.PMapPic)),
                ),
                child: Center(
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Color(0xffFF7043),
                      shape: BoxShape.circle
                    ),
                    child: Center(child: SvgPicture.asset(AssetsData.ALocationIcon),),
                  ),
                ),
              ),
              SizedBox(width: 15,),
              SizedBox(
                width: 200,
                child: Text(
                  '43, Electronics City Phase 1,Electronic City',
                  style: GoogleFonts.inter(fontSize: 15, color: ColorsData.GreyTextColor),
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
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
