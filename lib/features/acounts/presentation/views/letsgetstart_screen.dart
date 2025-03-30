import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/acounts_title_screen.dart';

class letsgetstart extends StatelessWidget {
  const letsgetstart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 205,),
          acounts_title_screen(titlecontent: 'Let’s Get Started',),
          SizedBox(height: 185,),
          // facebook
          Container(
            decoration: BoxDecoration(
            color: Color(0xff4267B2),
            borderRadius: BorderRadius.circular(10)
            ),
            width: 335,
            height: 50,
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              FaIcon(FontAwesomeIcons.facebookF, size: 17, color: Colors.white,),
              Text('Facebook', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17, color: Colors.white),)
            ],),
          ),
          SizedBox(height: 10,),
          // twitter
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff1DA1F2),
            ),
            width: 335,
            height: 50,
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              FaIcon(FontAwesomeIcons.twitter, size: 17, color: Colors.white,),
              Text('Twitter', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17, color: Colors.white),)
            ],),
          ),
          SizedBox(height: 10,),
          // google
          Container(
            decoration: BoxDecoration(
            color: Color(0xffEA4335),
            borderRadius: BorderRadius.circular(10)
            ),
            width: 335,
            height: 50,
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              FaIcon(FontAwesomeIcons.google, size: 17, color: Colors.white,),
              Text('Google', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17, color: Colors.white),)
            ],),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account? ', style: GoogleFonts.inter(fontSize: 15, color: Color(0xff8F959E)),),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, PagesName.LoginScreen) ,
                child: Text('Signin', style: GoogleFonts.inter(fontWeight: FontWeight.w500 , fontSize: 15, color: Color(0xff1D1E20)),)
              )
            ],
          ),
          SizedBox(height: 25,),
          acounts_footer_button(textconttent: 'Create an Account',
          onTap: () => Navigator.pushNamed(context, PagesName.SignupScreen),
          )
        ],
      ),
    );
  }
}


