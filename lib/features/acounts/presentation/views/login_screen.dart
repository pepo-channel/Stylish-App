import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/acounts_title_screen.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';
import 'package:stylish_app/features/acounts/presentation/widgets/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _keyform = GlobalKey<FormState>();
  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  bool isSwitch = true;

  @override
  void dispose() {
    _usernamecontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(pagetitle: ''),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - fixedHeight.HFooterButton,
          child: Column(
            children: [
              SizedBox(height: 15,),
              acounts_title_screen(titlecontent: 'Welcome',),
              Text('Please enter your data to continue', style: GoogleFonts.inter(fontSize: 15, color: Color(0xff8F959E)),),
              SizedBox(height: 165,),
              LoginForm(
                keyform: _keyform,
                usernamecontroller: _usernamecontroller,
                passwordcontroller: _passwordcontroller,
                isSwitch: isSwitch
              ),
              Column(
                children: [
                  Text('By connecting your account confirm that you agree', style: GoogleFonts.inter(fontSize: 13, color: Color(0xff8F959E)),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('with our ', style: GoogleFonts.inter(fontSize: 13, color: Color(0xff8F959E)),),
                      Text('Term and Condition', style: GoogleFonts.inter(fontSize: 13, color: Color(0xff1D1E20)),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25,),
              acounts_footer_button(
                textconttent: 'Login',
                onTap: (){
                  if(_keyform.currentState?.validate() == true){
                    Navigator.pushNamed(context, PagesName.WelcomeHomeScreen);
                  }
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
