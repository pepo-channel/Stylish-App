import 'package:flutter/material.dart';

class ProductPositionsItem extends StatelessWidget {
  const ProductPositionsItem({
    super.key, required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 77,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Image.asset(image),
    );
  }
}