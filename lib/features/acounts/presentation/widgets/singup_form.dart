import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/widgets/text_switch_button.dart';

class SignUpFrom extends StatelessWidget {
  const SignUpFrom({
    super.key,
    required GlobalKey<FormState> formkey,
    required TextEditingController usernamecontroller,
    required TextEditingController passwordcontroller,
    required TextEditingController emailcontroller,
    required this.isSwitch,
  }) : _formkey = formkey, _usernamecontroller = usernamecontroller, _passwordcontroller = passwordcontroller, _emailcontroller = emailcontroller;

  final GlobalKey<FormState> _formkey;
  final TextEditingController _usernamecontroller;
  final TextEditingController _passwordcontroller;
  final TextEditingController _emailcontroller;
  final bool isSwitch;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formkey,
          child: Column(
            spacing: 20,
            children: [
            // username field
            TextFormField(
            controller: _usernamecontroller,
            decoration: InputDecoration(
              label: Text('Username'),
              labelStyle: GoogleFonts.inter(fontWeight: FontWeight.w400),
              border: UnderlineInputBorder(),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff8F959E))),
              suffix: Icon(Icons.check, color: Color(0xff34C358), size: 20,),
              floatingLabelStyle: GoogleFonts.inter(color: Color(0xff8F959E),)
            ),
            validator: (value) {
              if(value == null || value.isEmpty){
                return 'Required field';
              }
              return null;
              },
            ),
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
                return null;
              },
            ),
            // email field
            TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                label: Text('Email Address'),
                labelStyle: GoogleFonts.inter(fontWeight: FontWeight.w400),
                border: UnderlineInputBorder(),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff8F959E))),
                focusColor: Color(0xff8F959E),
                suffix: Icon(Icons.check, color: Color(0xff34C358), size: 20,),
                floatingLabelStyle: GoogleFonts.inter(color: Color(0xff8F959E),)
              ),
              validator: (value) {
                if(value == null || value.isEmpty){
                  return 'Required field';
                }
                return null;
              },
            ),
            SizedBox(height: 20,),
            // text and switch
            CustomtextSwitchButton(
              isSwitch: isSwitch,
              text: 'Remember me',
            ),
            ],
          ),
        ),
      ),
    );
  }
}