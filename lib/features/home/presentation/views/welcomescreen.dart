
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/features/home/presentation/widgets/choose_gender_list.dart';

class WelcomeHomeScreen extends StatelessWidget {
  const WelcomeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsData.BasicColor,
      body: Stack(
        children: [
          Positioned(
            top: -40,
            left: -42,
            child: SvgPicture.asset(AssetsData.AblurToptPosition),
          ),
          Positioned(
            top: 381,
            left: -20,
            child: SvgPicture.asset(AssetsData.AblurLeftPosition),
          ),
          Positioned(
            top: 503,
            right: -20,
            child: SvgPicture.asset(AssetsData.AblurRightPosition),
          ),
          Positioned(
            bottom: 20,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: 70,),
                Image.asset(
                  AssetsData.PwelcomeHomeScreen,
                  height: MediaQuery.of(context).size.height - 300,
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      width: 345,
                      height: 260,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 25,),
                          Text('Look Good, Feel Good',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Color(0xff1D1E20),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Create your individual & unique style and\n look amazing everyday.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              color: Color(0xff8F959E),
                            ),
                          ),
                          SizedBox(height: 20,),
                          choose_gender_list(),
                          SizedBox(height: 20,),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(context, PagesName.HomeNavigator, (Route<dynamic> route) => false);
                            },
                            child: Text(
                              'Skip',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Color(0xff8F959E),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
