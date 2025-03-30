import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/features/home/presentation/widgets/choose_brand_list.dart';

class ChooseBarndHome extends StatelessWidget {
  const ChooseBarndHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Choose Brand', style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 17, color: Color(0xff1D1E20)),),
            Text('View All', style: GoogleFonts.inter(fontSize: 13, color: Color(0xff8F959E)),)
          ],
        ),
        SizedBox(height: 15,),
        ListBrand(),
      ],
    );
  }
}