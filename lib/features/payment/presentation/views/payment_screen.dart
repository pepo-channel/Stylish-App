import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';
import 'package:stylish_app/core/widgets/custom_snakbar.dart';
import 'package:stylish_app/features/payment/presentation/widgets/add_new_card_button.dart';
import 'package:stylish_app/features/payment/presentation/widgets/payment_form.dart';
import 'package:stylish_app/features/payment/presentation/widgets/visa_card_list.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _formkey = GlobalKey<FormState>();
  final _ownercontroller = TextEditingController();
  final _cardnumbercontroller = TextEditingController();
  final _expcontroller = TextEditingController();
  final _cvvcontroller = TextEditingController();

  @override
  void dispose() {
    _ownercontroller.dispose();
    _cardnumbercontroller.dispose();
    _expcontroller.dispose();
    _cvvcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(pagetitle: 'Payment'),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - fixedHeight.HFooterButton,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 40,),
              VisaCardList(),
              SizedBox(height: 15,),
              AddNewCardButton(),
              SizedBox(height: 20,),
              PaymentForm(
                formkey: _formkey,
                ownercontroller: _ownercontroller,
                cardnumbercontroller: _cardnumbercontroller,
                expcontroller: _expcontroller,
                cvvcontroller: _cvvcontroller
              ),
              acounts_footer_button(
                textconttent: 'Save Card',
                onTap: (){
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




