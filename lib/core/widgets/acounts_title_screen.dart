import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class acounts_title_screen extends StatelessWidget {
  const acounts_title_screen({
    super.key, required this.titlecontent,
  });

  final String titlecontent;

  @override
  Widget build(BuildContext context) {
    return Text(titlecontent, style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 28, color: Colors.black),);
  }
}
