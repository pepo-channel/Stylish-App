import 'package:flutter/material.dart';

class bar_buttons extends StatelessWidget {
  const bar_buttons({
    super.key, this.ontap, required this.backgroundcolor, required this.iconORsvg,
  });

  final void Function()? ontap;
  final Color backgroundcolor;
  final Widget iconORsvg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: CircleAvatar(
        backgroundColor: backgroundcolor,
        radius: 20,
        child: iconORsvg,
      ),
    );
  }
}