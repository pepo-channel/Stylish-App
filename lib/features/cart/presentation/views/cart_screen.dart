import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';
import 'package:stylish_app/features/cart/presentation/widgets/cart_delivery_address.dart';
import 'package:stylish_app/features/cart/presentation/widgets/cart_order_info.dart';
import 'package:stylish_app/features/cart/presentation/widgets/cart_payment_method.dart';
import 'package:stylish_app/features/cart/presentation/widgets/cart_product_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, this.canback = false});

  final bool canback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        pagetitle: 'Cart',
        onbacktap: canback ?
       () => Navigator.pushNamedAndRemoveUntil(context, PagesName.WelcomeHomeScreen, (Route<dynamic>route) => false) :
        null,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - fixedHeight.HFooterButton,
          child: Column(
            children: [
              SizedBox(height: 25,),
              Expanded(child: CartProductList()),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      DeliveryAddress(),
                      SizedBox(
                        height: 20,
                      ),
                      PaymentMethod(),
                      SizedBox(
                        height: 25,
                      ),
                      OrderInfo(),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
              acounts_footer_button(
                textconttent: 'Checkout',
                onTap: () {
                  Navigator.pushNamed(context, PagesName.CheckoutScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
