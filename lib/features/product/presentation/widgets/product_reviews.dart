
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Reviews', style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 17, color: Color(0xff1D1E20)),),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, PagesName.ReviewsSreen),
              child: Text(
                'View All',
                style: GoogleFonts.inter(fontSize: 13, color: ColorsData.GreyTextColor),),
            ),
            ],
          ),
          SizedBox(height: 17,),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: ColorsData.SliverColor,
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Ronald Richards', style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 15, color: ColorsData.BlackTextColor)),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SvgPicture.asset(AssetsData.AclockIcon, width: 15, colorFilter: ColorFilter.mode(ColorsData.GreyTextColor, BlendMode.srcIn),),
                      Text('13 Sep, 2020', style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 11, color: ColorsData.GreyTextColor),),
                    ],
                  )
                ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      Text('4.8', style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 15, color: ColorsData.BlackTextColor),),
                      Text('rating', style: GoogleFonts.inter(fontSize: 11, color: ColorsData.GreyTextColor),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      SvgPicture.asset(AssetsData.ACheckedStar),
                      SvgPicture.asset(AssetsData.ACheckedStar),
                      SvgPicture.asset(AssetsData.ACheckedStar),
                      SvgPicture.asset(AssetsData.ACheckedStar),
                      SvgPicture.asset(AssetsData.AUnCheckedStar),
                    ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque maellentesque malesuada eget vitae amet',
                style: GoogleFonts.inter(fontSize: 15, color: ColorsData.GreyTextColor),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}