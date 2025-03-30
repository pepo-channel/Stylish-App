import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class choose_gender_item extends StatefulWidget {
  const choose_gender_item({
    super.key,
    this.isactive = false, required this.kindgender,
  });

  final bool isactive;
  final String kindgender;

  @override
  State<choose_gender_item> createState() => _choose_gender_itemState();
}

class _choose_gender_itemState extends State<choose_gender_item> {
  Color boxcolor = Color(0xffF5F6FA);
  Color textcolor = Color(0xff8F959E);
  @override
  Widget build(BuildContext context) {
    if(widget.isactive){
      boxcolor = ColorsData.BasicColor;
      textcolor = Colors.white;
      setState(() {});
    }
    return Container(
      width: 152,
      height: 60,
      margin: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        color: widget.isactive ? boxcolor : Color(0xffF5F6FA),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(child: Text(widget.kindgender, style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 17, color: widget.isactive ? textcolor : Color(0xff8F959E)))),
    );
  }
}