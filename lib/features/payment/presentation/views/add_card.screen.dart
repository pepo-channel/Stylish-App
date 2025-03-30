import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';
import 'package:stylish_app/core/widgets/custom_snakbar.dart';
import 'package:stylish_app/features/payment/presentation/widgets/add_card_from.dart';
import 'package:stylish_app/features/payment/presentation/widgets/card_type_list.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {

  final _formkey = GlobalKey<FormState>();
  final _cardownercontroller = TextEditingController();
  final _cardnumbercontroller = TextEditingController();
  final _expnumbercontroller = TextEditingController();
  final _cvvnumbercontroller = TextEditingController();

  @override
  void dispose() {
    _cardownercontroller.dispose();
    _cardnumbercontroller.dispose();
    _expnumbercontroller.dispose();
    _cvvnumbercontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(pagetitle: 'Add New Card'),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - fixedHeight.HFooterButton,
          child: Column(
            children: [
              SizedBox(height: 40,),
              CardTypelist(),
              SizedBox(height: 30,),
              AddCardForm(
                formkey: _formkey,
                cardownercontroller: _cardownercontroller,
                cardnumbercontroller: _cardnumbercontroller,
                expnumbercontroller: _expnumbercontroller,
                cvvnumbercontroller: _cvvnumbercontroller
              ),
              acounts_footer_button(
                textconttent: 'Add Card',
                onTap: () {
                  if(_formkey.currentState?.validate() == true){
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      CustomSnakBar(
                        message: 'Success',
                        undo: true,
                        onaction: () {
                          // 
                        },
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




