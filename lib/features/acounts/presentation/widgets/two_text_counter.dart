import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class two_text_counter extends StatefulWidget {
  const two_text_counter({super.key});

  @override
  State<two_text_counter> createState() => _two_text_counterState();
}

class _two_text_counterState extends State<two_text_counter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('00:20', style: GoogleFonts.inter(fontSize: 13, color: Color(0xff1D1E20)),),
        Text(' resend confirmation code.', style: GoogleFonts.inter(fontSize: 13, color: Color(0xff8F959E)),)
      ],
    );
  }
}