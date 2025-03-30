import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';
import 'package:stylish_app/features/cart/presentation/widgets/checkout_orders_button.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(pagetitle: ''),
      body: Stack(
        children: [
          Center(
            child: Image.asset(AssetsData.POrderConfirmBackgroundImage),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(
                    AssetsData.POrderConfirmImage,
                    width: MediaQuery.of(context).size.width - 40,
                  ),
                ),
                SizedBox(height: 40,),
                Text(
                  'Order Confirmed!',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                    color: ColorsData.BlackTextColor
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Text(
                      'Your order has been confirmed, we will send you confirmation email shortly.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        color: ColorsData.GreyTextColor
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100,),
                GoToOrdersButton(),
                SizedBox(height: 30,),
                acounts_footer_button(
                  textconttent: 'Continue Shopping',
                  onTap: () => Navigator.pushNamedAndRemoveUntil(context, PagesName.HomeScreen, (Route<dynamic> route) => false),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
