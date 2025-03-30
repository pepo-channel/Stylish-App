
import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_textformfield.dart';
import 'package:stylish_app/core/widgets/text_switch_button.dart';

class AddressForm extends StatelessWidget {
  const AddressForm({
    super.key,
    required GlobalKey<FormState> formkey,
    required TextEditingController namecontroller,
    required TextEditingController countrycontroller,
    required TextEditingController citycontroller,
    required TextEditingController phonenumbercontroller,
    required TextEditingController addresscontroller,
  }) : _formkey = formkey, _namecontroller = namecontroller, _countrycontroller = countrycontroller, _citycontroller = citycontroller, _phonenumbercontroller = phonenumbercontroller, _addresscontroller = addresscontroller;

  final GlobalKey<FormState> _formkey;
  final TextEditingController _namecontroller;
  final TextEditingController _countrycontroller;
  final TextEditingController _citycontroller;
  final TextEditingController _phonenumbercontroller;
  final TextEditingController _addresscontroller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              // name field
              CustomTextFormField(
                controller: _namecontroller,
                labeltext: 'Name',
                hinttext: 'Hemendra Mali',
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // country field
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 27.5,
                    child: CustomTextFormField(
                      controller: _countrycontroller,
                      labeltext: 'Country',
                      hinttext: 'India',
                    ),
                  ),
                  // city field
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 27.5,
                    child: CustomTextFormField(
                      controller: _citycontroller,
                      labeltext: 'City',
                      hinttext: 'Bangalore',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              // phone number field
              CustomTextFormField(
                controller: _phonenumbercontroller,
                labeltext: 'Phone Number',
                hinttext: '+91-800 301 0108',
              ),
              SizedBox(height: 15,),
              // address field
              CustomTextFormField(
                controller: _addresscontroller,
                labeltext: 'Address',
                hinttext: '43, Electronics City Phase 1, Electronic City',
              ),
              SizedBox(height: 15,),
              // text and switch
              CustomtextSwitchButton(
                text: 'Save as primary address',
                isSwitch: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}