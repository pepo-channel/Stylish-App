
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Info',
            style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 17, color: ColorsData.BlackTextColor),
          ),
          SizedBox(height: 15,),
          OrderInfoRow(type: 'Subtotal', salary: '\$110',),
          SizedBox(height: 15,),
          OrderInfoRow(type: 'Delivery Charge', salary: '\$10',),
          SizedBox(height: 15,),
          OrderInfoRow(type: 'Total', salary: '\$120',),
        ],
      ),
    );
  }
}

class OrderInfoRow extends StatelessWidget {
  const OrderInfoRow({
    super.key, required this.type, required this.salary,
  });

  final String type;
  final String salary;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          type,
          style: GoogleFonts.inter(fontSize: 15, color: ColorsData.GreyTextColor),
        ),
        Text(
          salary,
          style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 15, color: ColorsData.BlackTextColor),
        ),
      ],
    );
  }
}