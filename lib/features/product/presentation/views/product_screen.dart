import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/features/home/presentation/widgets/choose_product_size_list.dart';
import 'package:stylish_app/features/product/presentation/widgets/product_description.dart';
import 'package:stylish_app/features/product/presentation/widgets/product_positions_item.dart';
import 'package:stylish_app/features/product/presentation/widgets/product_price.dart';
import 'package:stylish_app/features/product/presentation/widgets/product_reviews.dart';
import 'package:stylish_app/features/product/presentation/widgets/product_screen_appbar.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsData.HoverColor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // product image
                  SizedBox(
                    height: 418,
                    width: 375,
                    child: Image.asset(AssetsData.PHomeProduct1),
                  ),
                  // product details
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Men\'s Printed Pullover Hoodie', style: GoogleFonts.inter(fontSize: 13, color: Color(0xff8F959E)),),
                            Text('Price', style: GoogleFonts.inter(fontSize: 13, color: Color(0xff8F959E)),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Nike Club Fleece', style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 22, color: Color(0xff1D1E20)),),
                            Text('\$99', style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 22, color: Color(0xff1D1E20)),),
                          ],
                        ),
                        SizedBox(height: 21,),
                        SizedBox(
                          height: 77,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ProductPositionsItem(image: AssetsData.PHomeProduct1Position1,),
                              ProductPositionsItem(image: AssetsData.PHomeProduct1Position2,),
                              ProductPositionsItem(image: AssetsData.PHomeProduct1Position3,),
                              ProductPositionsItem(image: AssetsData.PHomeProduct1Position4,),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text('Size', style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 17, color: Color(0xff1D1E20)),),
                          Text('Size Guide', style: GoogleFonts.inter(fontSize: 15, color: Color(0xff8F959E)),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 40,
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: ChooseProductSizeList(),
                        ),
                        SizedBox(height: 20,),
                        ProductDescription(),
                        SizedBox(height: 15,),
                        ProductReviews(),
                        SizedBox(height: 20,),
                        ProductPrice(),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                  acounts_footer_button(
                    textconttent: 'Add to Cart',
                    onTap: () {
                      Navigator.pushNamed(context, PagesName.CartScreen);
                    },
                  ),
                ],
              ),
            ),
            ProductScreeenAppBar(),
          ],
        ),
      ),
    );
  }
}

