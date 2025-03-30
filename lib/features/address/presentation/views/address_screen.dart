import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';
import 'package:stylish_app/core/widgets/custom_snakbar.dart';
import 'package:stylish_app/features/address/presentation/widgets/address_form.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {

  final _formkey = GlobalKey<FormState>();
  final _namecontroller = TextEditingController();
  final _countrycontroller = TextEditingController();
  final _citycontroller = TextEditingController();
  final _phonenumbercontroller = TextEditingController();
  final _addresscontroller = TextEditingController();
  bool isSwitch = false;

  @override
  void dispose() {
    _namecontroller.dispose();
    _countrycontroller.dispose();
    _citycontroller.dispose();
    _phonenumbercontroller.dispose();
    _addresscontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(pagetitle: 'Address'),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - fixedHeight.HFooterButton,
          child: Column(
            children: [
              SizedBox(height: 25,),
              AddressForm(
                formkey: _formkey,
                namecontroller: _namecontroller,
                countrycontroller: _countrycontroller,
                citycontroller: _citycontroller,
                phonenumbercontroller: _phonenumbercontroller,
                addresscontroller: _addresscontroller
              ),
              acounts_footer_button(
                textconttent: 'Save Address',
                onTap: () {
                  if(_formkey.currentState?.validate() == true){
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      CustomSnakBar(
                        message: 'Success',
                        undo: true,
                        onaction: () {},
                      ),
                    );
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


