
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  Color likedcheck = Color(0xff8F959E);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorsData.HoverColor
            ),
            child: Stack(
              children: [
                Image.asset(AssetsData.PHomeProduct1),
                Positioned(
                  right: 12,
                  top: 15,
                  child: GestureDetector(
                    onTap: () {
                      if(likedcheck == Color(0xff8F959E)){
                        likedcheck = Colors.red;
                        setState(() {});
                      }else{
                        likedcheck = Color(0xff8F959E);
                        setState(() {});
                      }
                    },
                    child: SvgPicture.asset(
                      AssetsData.AHeartIcon,
                      width: 20,
                      colorFilter: ColorFilter.mode(likedcheck, BlendMode.srcIn),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          SizedBox(
            width: 120,
            child: Text('Nike Sportswear Club Fleece',
            style: GoogleFonts.inter(fontWeight: FontWeight.w500 ,fontSize: 11, color: Color(0xff1D1E20),),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 5,),
          Text('\$99', style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 13, color: Color(0xff1D1E20)),)
        ],
      ),
    );
  }
}