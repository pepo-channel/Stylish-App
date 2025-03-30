
import 'package:flutter/material.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/features/home/presentation/widgets/choose_brand_item.dart';

class ListBrand extends StatefulWidget {
  const ListBrand({super.key});

  @override
  State<ListBrand> createState() => _ListBrandState();
}

class _ListBrandState extends State<ListBrand> {

  final List BrandLogo = [AssetsData.AadidasBrand, AssetsData.AnikeBrand, AssetsData.AfilaBrand, AssetsData.ApumaBrand];
  final List BrandName = ['Adidas', 'Nike', 'Fila', 'Puma'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, PagesName.BrandScreen, arguments: BrandLogo[index]);
            },
            child: ItemBrand(
              BrandLogo: BrandLogo[index],
              BrandName: BrandName[index],
            ),
          );
        },
        itemCount: BrandLogo.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}