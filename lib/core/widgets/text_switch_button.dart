import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomtextSwitchButton extends StatefulWidget {
  CustomtextSwitchButton({super.key, required this.isSwitch, required this.text});
  bool isSwitch;
  final String text;
  @override
  State<CustomtextSwitchButton> createState() => _CutomtextSwitchButtonState();
}

class _CutomtextSwitchButtonState extends State<CustomtextSwitchButton> {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.text,
          style: GoogleFonts.manrope(fontWeight: FontWeight.w500,),),
        Spacer(),
        Switch(
        value: widget.isSwitch,
        onChanged: (value) {
          widget.isSwitch = value;
          setState(() {
          });
        },
        activeTrackColor: Colors.green,
        ),
      ],
    );
  }
}