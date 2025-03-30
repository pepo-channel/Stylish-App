
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class ChooseProductSizedItem extends StatefulWidget {
  const ChooseProductSizedItem({
    super.key, this.isactive = false, required this.sizetype,
  });

  final bool isactive;
  final String sizetype;
  @override
  State<ChooseProductSizedItem> createState() => _ChooseProductSizedItemState();
}

class _ChooseProductSizedItemState extends State<ChooseProductSizedItem> {
  Color boxcolor = ColorsData.HoverColor;
  Color textcolor = Color(0xff1D1E20);
  @override
  Widget build(BuildContext context) {
    if(widget.isactive){
      boxcolor = ColorsData.BasicColor;
      textcolor = Colors.white;
    }
    return Container(
      width: MediaQuery.of(context).size.width * 0.16,
      height: MediaQuery.of(context).size.height * 0.07,
      // margin: EdgeInsets.only(left: 10),
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.013,
        right: MediaQuery.of(context).size.width * 0.013,
      ),
      decoration: BoxDecoration(
        color: widget.isactive ? boxcolor :ColorsData.HoverColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(widget.sizetype, style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 17, color: widget.isactive ? textcolor : Color(0xff1D1E20)),),
      ),
    );
  }
}