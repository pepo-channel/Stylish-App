
import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_textformfield.dart';

class AddCardForm extends StatelessWidget {
  const AddCardForm({
    super.key,
    required GlobalKey<FormState> formkey,
    required TextEditingController cardownercontroller,
    required TextEditingController cardnumbercontroller,
    required TextEditingController expnumbercontroller,
    required TextEditingController cvvnumbercontroller,
  }) : _formkey = formkey, _cardownercontroller = cardownercontroller, _cardnumbercontroller = cardnumbercontroller, _expnumbercontroller = expnumbercontroller, _cvvnumbercontroller = cvvnumbercontroller;

  final GlobalKey<FormState> _formkey;
  final TextEditingController _cardownercontroller;
  final TextEditingController _cardnumbercontroller;
  final TextEditingController _expnumbercontroller;
  final TextEditingController _cvvnumbercontroller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              // card owner field
              CustomTextFormField(
                controller: _cardownercontroller,
                labeltext: 'Card Owner',
                hinttext: 'Mrh Raju',
              ),
              SizedBox(height: 15,),
              // card number field
              CustomTextFormField(
                controller: _cardnumbercontroller,
                labeltext: 'Card Number',
                hinttext: '5254 7634 8734 7690',
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // exp field
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 27.5,
                    child: CustomTextFormField(
                      controller: _expnumbercontroller,
                      labeltext: 'EXP',
                      hinttext: '24/24',
                    ),
                  ),
                  // cvv field
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 27.5,
                    child: CustomTextFormField(
                      controller: _cvvnumbercontroller,
                      labeltext: 'CVV',
                      hinttext: '7763',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}