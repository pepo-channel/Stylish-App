import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class acounts_footer_button extends StatelessWidget {
  const acounts_footer_button({
    super.key, required this.textconttent, required this.onTap,
  });

  final String textconttent;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75,
        color: ColorsData.BasicColor,
        child: Center(
          child: Text(textconttent, style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.white),),
        ),
      ),
    );
  }
}