import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/acounts_footer_button.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';
import 'package:stylish_app/core/widgets/custom_snakbar.dart';
import 'package:stylish_app/core/widgets/custom_textformfield.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({super.key});

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  double _currentvalue = 2.5;
  final _formkey = GlobalKey<FormState>();
  final _namecontroller = TextEditingController();
  final _describtioncontroller = TextEditingController();

  @override
  void dispose() {
    _namecontroller.dispose();
    _describtioncontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(pagetitle: 'Add Review'),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - fixedHeight.HFooterButton,
          child: Column(
            children: [
              SizedBox(height: 25,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name field
                        CustomTextFormField(
                          controller: _namecontroller,
                          labeltext: 'Name',
                          hinttext: 'Type your name',
                        ),
                        SizedBox(height: 20,),
                        // description field
                        CustomTextFormField(
                          controller: _describtioncontroller,
                          labeltext: 'How was your experience ?',
                          hinttext: 'Describe your experience?',
                          maxline: 8,
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Star',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: ColorsData.BlackTextColor,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('0.0'),
                            Expanded(
                              child: Slider(
                              value: _currentvalue,
                              min: 0.0,
                              max: 5.0,
                              divisions: 10,
                              activeColor: ColorsData.BasicColor,
                              onChanged: (value) {
                                _currentvalue = value;
                                setState(() {});
                              },
                              ),
                            ),
                            Text(_currentvalue.toStringAsFixed(1),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              acounts_footer_button(
                textconttent: 'Submit Review',
                onTap: () {
                  // 
                  if(_formkey.currentState?.validate() == true){
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      CustomSnakBar(
                        message: 'Success',
                        undo: true,
                        onaction: (){},
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


