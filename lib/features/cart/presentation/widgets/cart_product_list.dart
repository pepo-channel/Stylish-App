import 'package:flutter/material.dart';
import 'package:stylish_app/features/cart/presentation/widgets/cart_product_item.dart';

class CartProductList extends StatelessWidget {
  const CartProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return CartProductItem();
      },
    );
  }
}