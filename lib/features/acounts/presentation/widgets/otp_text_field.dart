import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class OtpSmsItem extends StatelessWidget {
  const OtpSmsItem({
    super.key,
    required TextEditingController field1controller,
  }) : _field1controller = field1controller;

  final TextEditingController _field1controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77,
      child: TextFormField(
        controller: _field1controller,
        validator: (value) {
          if(value!.isEmpty){
            return 'required field';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: '0',
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical:  30),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10)
          )
        ),
        style: Theme.of(context).textTheme.headlineLarge,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (value) {
          if(value.length == 1){
          FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
