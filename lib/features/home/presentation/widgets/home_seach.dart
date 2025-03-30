
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_app/core/utils/consts.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 100,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              filled: true,
              fillColor: ColorsData.HoverColor,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(AssetsData.AsearchIcon),
              ),
              hintText: 'Search...',
              hintStyle: TextStyle(color: Color(0xff8F959E), fontSize: 15),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: ColorsData.BasicColor,
            borderRadius: BorderRadius.circular(8)
          ),
          child: Center(
            child: SvgPicture.asset(AssetsData.AvoiceIcon),
          ),
        )
      ],
    );
  }
}

