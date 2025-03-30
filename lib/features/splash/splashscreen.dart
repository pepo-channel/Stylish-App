import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/features/splash/views/spalshbody.dart';

class spalshscreen extends StatelessWidget {
  const spalshscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsData.BasicColor,
      body: Spalshbody(),
    );
  }
}