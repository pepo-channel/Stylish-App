import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/features/payment/presentation/widgets/visa_card_item.dart';

class VisaCardList extends StatefulWidget {
  const VisaCardList({super.key});

  @override
  State<VisaCardList> createState() => _VisaCardListState();
}

class _VisaCardListState extends State<VisaCardList> {

  final List visaimages = [AssetsData.PVisaMask1, AssetsData.PVisaMask2];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.width * 0.3374384236453202, // height 185
      height: 223,
      padding: EdgeInsets.only(left: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return VisaCardItem(visaimage: visaimages[index],);
        },
      ),
    );
  }
}