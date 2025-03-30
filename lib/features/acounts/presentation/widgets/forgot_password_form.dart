
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    super.key,
    required GlobalKey<FormState> keyform,
    required TextEditingController emailcontroller,
  }) : _keyform = keyform, _emailcontroller = emailcontroller;

  final GlobalKey<FormState> _keyform;
  final TextEditingController _emailcontroller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _keyform,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              
            ],
          ),
        ),
      ),
    );
  }
}