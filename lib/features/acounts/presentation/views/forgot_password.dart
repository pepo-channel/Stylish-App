import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/acounts_title_screen.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';
import 'package:stylish_app/features/acounts/presentation/widgets/forgot_password_form.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final _keyform = GlobalKey<FormState>();
  final _emailcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(pagetitle: ''),
      body: SizedBox(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - fixedHeight.HFooterButton,
            child: Column(
              children: [
                SizedBox(height: 15,),
                acounts_title_screen(titlecontent: 'Forgot Password'),
                SizedBox(height: 68,),
                SvgPicture.asset(AssetsData.Apassword),
                SizedBox(height: 80,),
                ForgotPasswordForm(
                  keyform: _keyform,
                  emailcontroller: _emailcontroller,
                ),
                Text('Please write your email to receive a\n confirmation code to set a new password.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(color: Color(0xff8F959E), fontSize: 13),
                  ),
                SizedBox(height: 25,),
                acounts_footer_button(
                  textconttent: 'Confirm Mail',
                  onTap: () {
                    if(_keyform.currentState?.validate() == true){
                      Navigator.pushNamed(context, PagesName.VerificationCodeScreen);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
