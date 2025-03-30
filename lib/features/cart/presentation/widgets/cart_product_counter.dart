import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class ProductCounter extends StatefulWidget {
  const ProductCounter({super.key});

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  int productcount = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              if(productcount > 1){
                productcount--;
                setState(() {});
              }
            },
            child: CircleAvatar(
              backgroundColor: ColorsData.GreyTextColor,
              radius: 13,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12.5,
                child: Icon(Icons.keyboard_arrow_down),
              ),
            ),
          ),
          SizedBox(width: 15,),
          Text(
            '$productcount',
            style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 13, color: ColorsData.BlackTextColor),
          ),
          SizedBox(width: 15,),
          GestureDetector(
            onTap: () {
              if(productcount < 10){
                productcount++;
                setState(() {});
              }
            },
            child: CircleAvatar(
              backgroundColor: ColorsData.GreyTextColor,
              radius: 13,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12.5,
                child: Icon(Icons.keyboard_arrow_up),
              ),
            ),
          ),
        ],
      ),
    );
  }
}