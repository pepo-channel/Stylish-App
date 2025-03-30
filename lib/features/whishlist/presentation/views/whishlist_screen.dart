import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/features/home/presentation/widgets/home_product_list.dart';
import 'package:stylish_app/features/whishlist/presentation/widgets/itemcount_editbutton.dart';

class WhishlistScreen extends StatelessWidget {
  const WhishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        leftsvg: AssetsData.AbackIcon,
        leftsvg_ontap: () => Navigator.pushNamedAndRemoveUntil(context, PagesName.WelcomeHomeScreen, (Route<dynamic> route) => false),
        centerwidget: Text(
          'Wishlist',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: ColorsData.BlackTextColor
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 25,)),
            ItemCountAndEditButton(),
            SliverToBoxAdapter(child: SizedBox(height: 20,),),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.height * 0.82,
                child: ProductsList()),
            ),
          ],
        ),
      ),
    );
  }
}
