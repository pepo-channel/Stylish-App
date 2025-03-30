import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';

Row get_drawer_person_info() {
    return Row(
            children: [
              CircleAvatar(
                backgroundColor: ColorsData.HoverColor,
                radius: 22.5,
                child: Center(child: Icon(FontAwesomeIcons.user),),
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hemendra',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: ColorsData.BlackTextColor,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Verified Profile',
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: ColorsData.GreyTextColor,
                        ),
                      ),
                      SvgPicture.asset(AssetsData.AVerifiedIcon),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: 66,
                height: 32,
                color: ColorsData.HoverColor,
                child: Center(
                  child: Text(
                    '3 Orders',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: ColorsData.GreyTextColor,
                    ),
                  ),
                ),
              ),
              
            ],
          );
  }