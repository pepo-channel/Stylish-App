import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/custom_appbar.dart';
import 'package:stylish_app/features/home/presentation/widgets/home_product_list.dart';
import 'package:stylish_app/features/whishlist/presentation/widgets/itemcount_editbutton.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key,});
  @override
  Widget build(BuildContext context) {
  final String brandsvg = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: CustomAppbar(
        leftsvg: AssetsData.AbackIcon,
        leftsvg_ontap: () => Navigator.pop(context),
        centerwidget: Container(
          width: 68,
          height: 45,
          decoration: BoxDecoration(
            color: ColorsData.HoverColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: SvgPicture.asset(brandsvg, width: 48, height: 25,)),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 25,),),
            ItemCountAndEditButton(),
            SliverToBoxAdapter(child: SizedBox(height: 20,),),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.height * 0.82,
                child: ProductsList()),
            ),
          ],
        ),
      ),
    );
  }
}