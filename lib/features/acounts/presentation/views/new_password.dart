import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/acounts_title_screen.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final _formkey = GlobalKey<FormState>();
  final _passwordcontroller = TextEditingController();
  final _confirmpasswordcontroller = TextEditingController();
  late String fpassword;

  @override
  void dispose() {
    _passwordcontroller.dispose();
    _confirmpasswordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(pagetitle: ''),
      body: SizedBox(
        width: double.infinity,
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(height: 15,),
              acounts_title_screen(titlecontent: 'New Password'),
              SizedBox(height: 186,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    // password field
                    TextFormField(
                      controller: _passwordcontroller,
                      decoration: InputDecoration(
                        label: Text('Password'),
                        labelStyle: GoogleFonts.inter(fontWeight: FontWeight.w400),
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff8F959E))),
                        suffix: Text('Strong'),
                        suffixStyle: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 11, color: Color(0xff34C358)),
                        floatingLabelStyle: GoogleFonts.inter(color: Color(0xff8F959E),)
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Required field';
                        }
                        fpassword = value;
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    // Confrim password field
                    TextFormField(
                      controller: _confirmpasswordcontroller,
                      decoration: InputDecoration(
                        label: Text('Confrim Password'),
                        labelStyle: GoogleFonts.inter(fontWeight: FontWeight.w400),
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff8F959E))),
                        suffix: Text('Strong'),
                        suffixStyle: GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 11, color: Color(0xff34C358)),
                        floatingLabelStyle: GoogleFonts.inter(color: Color(0xff8F959E),)
                      ),
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return 'Required field';
                        }
                        if(value != fpassword){
                          return 'Worng Password';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text('Please write your new password.', style: GoogleFonts.inter(fontSize: 13, color: Color(0xff8F959E) ),),
              SizedBox(height: 25,),
              acounts_footer_button(
                textconttent: 'Reset Password',
                onTap: () {
                  if(_formkey.currentState?.validate() == true){
                    Navigator.pushNamed(context, PagesName.WelcomeHomeScreen);
                  }
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}