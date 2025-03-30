
import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/consts.dart';

class CardTypeItem extends StatefulWidget {
  const CardTypeItem({
    super.key, this.isactive = false, required this.cardtype,
  });

  final bool isactive;
  final String cardtype;

  @override
  State<CardTypeItem> createState() => _CardTypeItemState();
}

class _CardTypeItemState extends State<CardTypeItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.26, // width 100
      height: MediaQuery.of(context).size.height * 0.061, // height 50
      margin: EdgeInsets.only(
        right: (MediaQuery.of(context).size.width * 0.0453) / 2,
        left: (MediaQuery.of(context).size.width * 0.0453) / 2,
      ),
      decoration: BoxDecoration(
        color: widget.isactive ? Color(0xffFFEEE3) :ColorsData.HoverColor,
        border: widget.isactive ? Border.all(
          color: Color(0xffFF5F00),
          width: 2
        ) : null,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Image.asset(widget.cardtype),
      ),
    );
  }
}