import 'package:flutter/material.dart';
import 'package:stylish_app/features/home/presentation/widgets/choose_product_size_item.dart';

class ChooseProductSizeList extends StatefulWidget {
  const ChooseProductSizeList({super.key});

  @override
  State<ChooseProductSizeList> createState() => _ChooseProductSizeListState();
}

class _ChooseProductSizeListState extends State<ChooseProductSizeList> {
  List sizes = ['S', 'M', 'L', 'XL', '2XL'];
  int currentitem = 2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sizes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentitem = index;
              setState(() {});
            },
            child: ChooseProductSizedItem(isactive: currentitem == index, sizetype: sizes[index],),
          );
        },
      ),
    );
  }
}