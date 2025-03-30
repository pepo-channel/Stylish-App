
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/features/whishlist/presentation/widgets/whishlist_edit_button.dart';

class ItemCountAndEditButton extends StatelessWidget {
  const ItemCountAndEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '365 Items',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: ColorsData.BlackTextColor,
                    ),
                  ),
                  Text(
                    'in wishlist',
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      color: ColorsData.GreyTextColor,
                    ),
                  ),
                ],
              ),
            ),
            WhishlistEditButton(),
          ],
        ),
      ),
    );
  }
}
