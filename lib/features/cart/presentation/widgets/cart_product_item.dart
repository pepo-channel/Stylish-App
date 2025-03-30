
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/features/cart/presentation/widgets/cart_product_counter.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 120,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white ,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(AssetsData.PHomeProduct1),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  child: Text(
                    'Men\'s Tie-Dye T-Shirt Nike Sportswear',
                    textWidthBasis: TextWidthBasis.parent,
                    softWrap: true,
                    style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 13, color: ColorsData.BlackTextColor),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  '\$99 (+\$4.00 Tax)',
                  style: GoogleFonts.inter(fontSize: 11, color: ColorsData.GreyTextColor),
                ),
                SizedBox(height: 10,),
                ProductCounter(),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                // 
              },
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorsData.GreyTextColor)
                ),
                child: Center(child: SvgPicture.asset(AssetsData.ADeleteIcon),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}