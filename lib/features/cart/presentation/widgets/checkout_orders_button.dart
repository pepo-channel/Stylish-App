
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class GoToOrdersButton extends StatelessWidget {
  const GoToOrdersButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          width: MediaQuery.of(context).size.width - 40,
          height: 50,
          decoration: BoxDecoration(
            color: ColorsData.HoverColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'Go to Orders',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: ColorsData.GreyTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}