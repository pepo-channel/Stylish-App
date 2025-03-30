
import 'package:flutter/material.dart';
import 'package:stylish_app/features/home/presentation/widgets/choose_gender_item.dart';

class choose_gender_list extends StatefulWidget {
  const choose_gender_list({super.key});

  @override
  State<choose_gender_list> createState() => _choose_gender_listState();
}

class _choose_gender_listState extends State<choose_gender_list> {
  List kind = ['Women', 'Man'];
  int current_item = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              current_item = index;
              
              setState(() {});
            },
            child: choose_gender_item(
              isactive: current_item == index, kindgender: kind[index],
            ),
          );
        },
      ),
    );
  }
}