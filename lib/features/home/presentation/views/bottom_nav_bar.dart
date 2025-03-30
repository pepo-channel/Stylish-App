import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/core/widgets/basic_bar_icon.dart';
import 'package:stylish_app/features/cart/presentation/views/cart_screen.dart';
import 'package:stylish_app/features/home/presentation/methods/drawer_person_info.dart';
import 'package:stylish_app/features/home/presentation/views/home.dart';
import 'package:stylish_app/features/home/presentation/widgets/drawer_button_item.dart';
import 'package:stylish_app/features/home/presentation/widgets/drawer_button_list.dart';
import 'package:stylish_app/features/payment/presentation/views/payment_screen.dart';
import 'package:stylish_app/features/whishlist/presentation/views/whishlist_screen.dart';

class HomeNavigator extends StatefulWidget {
  const HomeNavigator({super.key});

  @override
  State<HomeNavigator> createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {

  final scaffoldkey = GlobalKey<ScaffoldState>();
  bool isactive = false;

  @override
  Widget build(BuildContext context) {
  final controller = Get.put(NavigationController(scaffoldkey));
    return Scaffold(
      key: scaffoldkey,
      drawer: drawerwidget(),
      bottomNavigationBar: Obx(
        () => Container(
          child: _getBottomNavigationBar(controller),
        ),
      ),
      body: Obx(() => controller.pages[controller.selectedindex.value],),
    );
  }

  BottomNavigationBar _getBottomNavigationBar(NavigationController controller) {
    return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedLabelStyle: TextStyle(height: 0),
          unselectedLabelStyle: TextStyle(height: 0),
          elevation: 0,
          currentIndex: controller.selectedindex.value,
          type: BottomNavigationBarType.fixed,
          onTap: (value) => controller.selectedindex.value = value,
          items: List.generate(controller.label.length, (index){
            return BottomNavigationBarItem(
              icon: controller.selectedindex.value == index ? 
                Center(child: Text(controller.label[index], style: TextStyle(color: ColorsData.BasicColor),)) :
                Center(child: SvgPicture.asset(controller.icon[index], colorFilter: ColorFilter.mode(ColorsData.GreyTextColor , BlendMode.srcIn), width: 20,)),
              label: '',
            );
          }),
        );
  }


  Widget drawerwidget() => Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.zero),
    ),
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            bar_buttons(
              ontap: () => scaffoldkey.currentState?.closeDrawer(),
              backgroundcolor: ColorsData.HoverColor,
              iconORsvg: Transform.rotate(
                angle: 3.14 / 2,
                child: SvgPicture.asset(AssetsData.AminuIcon),
              ),
            ),
            SizedBox(height: 30,),
            get_drawer_person_info(),
            SizedBox(height: 30,),
            get_drawer_first_option(),
            SizedBox(height: 10,),
            DrawerButtonList(),
            Spacer(),
            // get_logout_button(),
            DrawerButtonItem(
              icon: AssetsData.ALogoutIcon, 
              text: 'Logout', 
              color: Color(0xffFF5757),
            ),
            SizedBox(height: 80,),
          ],
        ),
      ),
    ),
  );

  // InkWell get_logout_button() {
  //   return InkWell(
  //           onTap: () {
  //             // 
  //           },
  //           child: Align(
  //             alignment: Alignment.center,
  //             child: Text(
  //               'Log Out!',
  //               style: GoogleFonts.inter(
  //                 fontWeight: FontWeight.w600,
  //                 fontSize: 16,
  //                 color: Colors.redAccent
  //               ),
  //             ),
  //           ),
  //         );
  // }

  Row get_drawer_first_option() {
    return Row(
            children: [
              SvgPicture.asset(
                AssetsData.ACartNavBarIcon,
                colorFilter: ColorFilter.mode(ColorsData.BlackTextColor, BlendMode.srcIn),
              ),
              SizedBox(width: 10,),
              Text(
                'Account Information',
                style: GoogleFonts.inter(
                  fontSize: 15,
                  color: ColorsData.BlackTextColor
                ),
              ),
              Spacer(),
              Switch(
              value: isactive,
              onChanged: (value) {
                isactive = value;
                setState(() {
                });
              },
              activeTrackColor: Colors.green,
              ),
            ],
          );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedindex = 0.obs;
  final GlobalKey<ScaffoldState>? scaffoldkey;

  NavigationController(this.scaffoldkey);

  late final List pages;

  @override
  void onInit() {
    super.onInit();
    pages = [
      HomeScreen(scaffoldkey: scaffoldkey),
      WhishlistScreen(),
      CartScreen(canback: true),
      PaymentScreen(),
    ];
  }
  

  final label = ['Home', 'Wishlist', 'Market', 'Payment'];
  final icon = [
    AssetsData.AHomeNavBarIcon,
    AssetsData.AWhishlistNavBarIcon,
    AssetsData.ACartNavBarIcon,
    AssetsData.APaymentNavBarIcon,
  ];
}