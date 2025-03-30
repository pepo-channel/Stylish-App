
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/text_switch_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required GlobalKey<FormState> keyform,
    required TextEditingController usernamecontroller,
    required TextEditingController passwordcontroller,
    required this.isSwitch,
  }) : _keyform = keyform, _usernamecontroller = usernamecontroller, _passwordcontroller = passwordcontroller;

  final GlobalKey<FormState> _keyform;
  final TextEditingController _usernamecontroller;
  final TextEditingController _passwordcontroller;
  final bool isSwitch;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _keyform,
          child: Column(
            children: [
            Column(
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
              SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, PagesName.ForgotPasswordScreen),
                  child: Text('Forgot password?', style: GoogleFonts.inter(fontSize: 15, color: Color(0xffEA4335)), textAlign: TextAlign.right))),
              // text and switch
              CustomtextSwitchButton(
                isSwitch: isSwitch,
                text: 'Remember me',
              ),
              ],
            ),
            
            ],
          ),
        ),
      ),
    );
  }
}
