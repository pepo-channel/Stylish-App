import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/features/payment/presentation/widgets/card_type_item.dart';

class CardTypelist extends StatefulWidget {
  const CardTypelist({super.key});

  @override
  State<CardTypelist> createState() => _CardTypelistState();
}

class _CardTypelistState extends State<CardTypelist> {
  List cardimage = [AssetsData.PMasterCardImage, AssetsData.PPaypalCardImage, AssetsData.PBankCardImage];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.061, // height 50
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardimage.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentindex = index;
              setState(() {});
            },
            child: CardTypeItem(
              cardtype: cardimage[index],
              isactive: currentindex == index,
            ),
          );
        },
      ),
    );
  }
}