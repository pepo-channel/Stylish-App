import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerButtonItem extends StatelessWidget {
  const DrawerButtonItem({
    super.key, required this.icon, required this.text, this.ontap, required this.color,
  });

  final String icon;
  final String text;
  final void Function()? ontap;
  final Color color;
  // final GestureTapCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 45,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 25,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
            ),
            SizedBox(width: 10,),
            Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 15,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}