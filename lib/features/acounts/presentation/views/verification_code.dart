import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/acounts_title_screen.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';
import 'package:stylish_app/features/acounts/presentation/widgets/otp_text_form.dart';
import 'package:stylish_app/features/acounts/presentation/widgets/two_text_counter.dart';


class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {

  final _formkey = GlobalKey<FormState>();
  final _field1controller = TextEditingController();
  final _field2controller = TextEditingController();
  final _field3controller = TextEditingController();
  final _field4controller = TextEditingController();

  @override
  void dispose() {
    _field1controller.dispose();
    _field2controller.dispose();
    _field3controller.dispose();
    _field4controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(pagetitle: ''),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height - fixedHeight.HFooterButton,
          child: Column(
            children: [
              SizedBox(height: 15,),
              acounts_title_screen(titlecontent: 'Verification Code'),
              SizedBox(height: 68,),
              SvgPicture.asset(AssetsData.Apassword),
              SizedBox(height: 60,),
              OtpSmsForm(
                formkey: _formkey,
                field1controller: _field1controller,
                field2controller: _field2controller,
                field3controller: _field3controller,
                field4controller: _field4controller,
              ),
              Spacer(),
              two_text_counter(),
              SizedBox(height: 25,),
              acounts_footer_button(
                textconttent: 'Confirm Code',
                onTap: () {
                  if(_formkey.currentState?.validate() == true){
                    Navigator.pushNamed(context, PagesName.NewPassword);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}



