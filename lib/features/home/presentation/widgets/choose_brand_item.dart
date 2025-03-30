
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class ItemBrand extends StatefulWidget {
  const ItemBrand({
    super.key, this.isactive = false, required this.BrandLogo, required this.BrandName,
  });

  final bool isactive;
  final String BrandLogo;
  final String BrandName;

  @override
  State<ItemBrand> createState() => _ItemBrandState();
}

class _ItemBrandState extends State<ItemBrand> {

  Color backgroundColor = ColorsData.HoverColor;
  Color BrandNameColor = Color(0xff1D1E20);

  @override
  Widget build(BuildContext context) {
    if(widget.isactive){
      backgroundColor = ColorsData.BasicColor;
      BrandNameColor = Colors.white;
      setState(() {});
    }
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 115,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.isactive ? backgroundColor : ColorsData.HoverColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Center(
              child: SvgPicture.asset(widget.BrandLogo),
            ),
          ),
          Text(widget.BrandName, style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 15, color: widget.isactive? BrandNameColor : Color(0xff1D1E20)),)
        ],
      ),
    );
  }
}