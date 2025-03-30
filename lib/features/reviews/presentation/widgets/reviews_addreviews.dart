
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class ReviewsAddReview extends StatelessWidget {
  const ReviewsAddReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '245 Reviews',
                  style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 15, color: ColorsData.BlackTextColor),
                ),
                Row(
                  children: [
                    Text(
                      '4.8 ',
                      style: GoogleFonts.inter(fontSize: 13, color: ColorsData.BlackTextColor),
                    ),
                    SvgPicture.asset(AssetsData.ACheckedStar),
                    SvgPicture.asset(AssetsData.ACheckedStar),
                    SvgPicture.asset(AssetsData.ACheckedStar),
                    SvgPicture.asset(AssetsData.ACheckedStar),
                    SvgPicture.asset(AssetsData.AUnCheckedStar),
                  ],
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, PagesName.AddReviewScreen);
            },
            child: Container(
              width: 115,
              height: 35,
              decoration: BoxDecoration(
                color: Color(0xffFF7043),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SvgPicture.asset(AssetsData.AEditIcon),
                  Text(
                    ' Add Review',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}