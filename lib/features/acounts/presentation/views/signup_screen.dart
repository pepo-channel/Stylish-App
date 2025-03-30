import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/acounts_title_screen.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';
import 'package:stylish_app/features/acounts/presentation/widgets/singup_form.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final _formkey = GlobalKey<FormState>();
  final _usernamecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  bool isSwitch = false;

  @override
  void dispose() {
    _usernamecontroller.dispose();
    _emailcontroller.dispose();
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
              acounts_title_screen(titlecontent: 'Sign Up',),
              SizedBox(height: 152,),
              SignUpFrom(
                formkey: _formkey,
                usernamecontroller: _usernamecontroller,
                passwordcontroller: _passwordcontroller,
                emailcontroller: _emailcontroller,
                isSwitch: isSwitch,
                ),
              acounts_footer_button(
                textconttent: 'Sign Up',
                onTap: () {
                  if(_formkey.currentState?.validate() == true){
                    Navigator.pushNamed(context, PagesName.WelcomeHomeScreen);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

