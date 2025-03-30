import 'package:flutter/material.dart';
import 'package:stylish_app/features/acounts/presentation/widgets/otp_text_field.dart';

class OtpSmsForm extends StatelessWidget {
  const OtpSmsForm({
    super.key,
    required GlobalKey<FormState> formkey,
    required TextEditingController field1controller,
    required TextEditingController field2controller,
    required TextEditingController field3controller,
    required TextEditingController field4controller,
  }) : _formkey = formkey, _field1controller = field1controller, _field2controller = field2controller, _field3controller = field3controller, _field4controller = field4controller;

  final GlobalKey<FormState> _formkey;
  final TextEditingController _field1controller;
  final TextEditingController _field2controller;
  final TextEditingController _field3controller;
  final TextEditingController _field4controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formkey,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OtpSmsItem(field1controller: _field1controller),
                OtpSmsItem(field1controller: _field2controller),
                OtpSmsItem(field1controller: _field3controller),
                OtpSmsItem(field1controller: _field4controller),
              ],
            ),
          ),
        );
  }
}
