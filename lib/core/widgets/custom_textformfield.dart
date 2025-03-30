import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
  super.key,
  required this.labeltext,
  required this.controller,
  required this.hinttext,
  this.maxline = 1
  });

  final String labeltext;
  final TextEditingController controller;
  final String hinttext;
  final int maxline;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labeltext,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: ColorsData.BlackTextColor,
          ),
        ),
        SizedBox(height: 10,),
        TextFormField(
          controller: controller,
          validator: (value) {
            if(value!.isEmpty){
              return 'required field';
            }
            return null;
          },
          maxLines: maxline,
          decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: GoogleFonts.inter(
              fontSize: 15,
              color: ColorsData.GreyTextColor,
            ),
            filled: true,
            fillColor: ColorsData.HoverColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}