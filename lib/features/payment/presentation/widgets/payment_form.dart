
import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_textformfield.dart';
import 'package:stylish_app/core/widgets/text_switch_button.dart';

class PaymentForm extends StatelessWidget {
  const PaymentForm({
    super.key,
    required GlobalKey<FormState> formkey,
    required TextEditingController ownercontroller,
    required TextEditingController cardnumbercontroller,
    required TextEditingController expcontroller,
    required TextEditingController cvvcontroller,
  }) : _formkey = formkey, _ownercontroller = ownercontroller, _cardnumbercontroller = cardnumbercontroller, _expcontroller = expcontroller, _cvvcontroller = cvvcontroller;

  final GlobalKey<FormState> _formkey;
  final TextEditingController _ownercontroller;
  final TextEditingController _cardnumbercontroller;
  final TextEditingController _expcontroller;
  final TextEditingController _cvvcontroller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // card owner field
              CustomTextFormField(
                controller: _ownercontroller,
                labeltext: 'Card Owner',
                hinttext: 'Hemendra Mali',
              ),
              SizedBox(height: 15,),
              // card owner field
              CustomTextFormField(
                controller: _cardnumbercontroller,
                labeltext: 'Card Number',
                hinttext: '5254 7634 8734 7690',
              ),
              SizedBox(height: 15,),
              Row(
                spacing: 15,
                children: [
                  // EXP field
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 27.5,
                    child: CustomTextFormField(
                      controller: _expcontroller,
                      labeltext: 'EXP',
                      hinttext: '24/24',
                    ),
                  ),
                  // CVV field
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 27.5,
                    child: CustomTextFormField(
                      controller: _cvvcontroller,
                      labeltext: 'CVV',
                      hinttext: '7763',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              // text and switch
              CustomtextSwitchButton(
                text: 'Save card info',
                isSwitch: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}