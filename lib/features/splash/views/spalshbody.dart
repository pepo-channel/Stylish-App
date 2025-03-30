import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/features/acounts/presentation/acounts.dart';

class Spalshbody extends StatefulWidget {
  const Spalshbody({super.key});

  @override
  State<Spalshbody> createState() => _SpalshbodyState();
}

class _SpalshbodyState extends State<Spalshbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation timminganimation;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
    () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Acounts())));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Image.asset(AssetsData.PspalshScreen, width: 200,),
          Text('STYLISH', style: GoogleFonts.firaSans(fontSize: 50, color: Colors.white)),
          Text('Find Your Slyle', style: GoogleFonts.sacramento(fontSize: 40, color: Colors.white)),
        ],
      ),
    );
  }
}
