import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_title_screen.dart';
import 'package:stylish_app/features/home/presentation/widgets/choose_brand.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/features/home/presentation/widgets/home_product.dart';
import 'package:stylish_app/features/home/presentation/widgets/home_seach.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    GlobalKey<ScaffoldState>? scaffoldkey,
    }) : _scaffoldkey = scaffoldkey;

  final GlobalKey<ScaffoldState>? _scaffoldkey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        centerwidget: Text(''),
        leftsvg: AssetsData.AminuIcon,
        leftsvg_ontap: (){
          _scaffoldkey?.currentState?.openDrawer();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                acounts_title_screen(titlecontent: 'Hemendra'),
                Text('Welcome to Laza.', style: GoogleFonts.inter(fontSize: 15, color: Color(0xff8F959E),)),
                SizedBox(height: 20,),
                HomeSearch(),
                SizedBox(height: 20,),
                ChooseBarndHome(),
                SizedBox(height: 15,),
                Expanded(child: HommeProducts()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}