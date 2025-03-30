// ignore_for_file: equal_keys_in_map
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/utils/consts.dart';
import 'package:stylish_app/features/acounts/presentation/views/forgot_password.dart';
import 'package:stylish_app/features/acounts/presentation/views/login_screen.dart';
import 'package:stylish_app/features/acounts/presentation/views/new_password.dart';
import 'package:stylish_app/features/acounts/presentation/views/signup_screen.dart';
import 'package:stylish_app/features/acounts/presentation/views/verification_code.dart';
import 'package:stylish_app/features/address/presentation/views/address_screen.dart';
import 'package:stylish_app/features/brand/presentation/views/brand_screen.dart';
import 'package:stylish_app/features/cart/presentation/views/cart_screen.dart';
import 'package:stylish_app/features/cart/presentation/views/checkout_screen.dart';
import 'package:stylish_app/features/home/presentation/views/bottom_nav_bar.dart';
import 'package:stylish_app/features/home/presentation/views/home.dart';
import 'package:stylish_app/features/product/presentation/views/product_screen.dart';
import 'package:stylish_app/features/home/presentation/views/welcomescreen.dart';
import 'package:stylish_app/features/payment/presentation/views/add_card.screen.dart';
import 'package:stylish_app/features/payment/presentation/views/payment_screen.dart';
import 'package:stylish_app/features/reviews/presentation/views/addreview_screen.dart';
import 'package:stylish_app/features/reviews/presentation/views/reviews_sreen.dart';
import 'package:stylish_app/features/splash/splashscreen.dart';
import 'package:stylish_app/features/whishlist/presentation/views/whishlist_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Locks to portrait mode
  ]).then((_) {
    runApp(const StylishApp());
  });
}

class StylishApp extends StatelessWidget {
  const StylishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        PagesName.SignupScreen : (context) => SignupScreen(),
        PagesName.LoginScreen : (context) => LoginScreen(),
        PagesName.ForgotPasswordScreen : (context) => ForgotPassword(),
        PagesName.VerificationCodeScreen : (context) => VerificationCodeScreen(),
        PagesName.NewPassword : (context) => NewPassword(),
        PagesName.WelcomeHomeScreen : (context) => WelcomeHomeScreen(),
        PagesName.HomeScreen : (context) => HomeScreen(),
        PagesName.ProductScreen : (context) => ProductScreen(),
        PagesName.CartScreen : (context) => CartScreen(),
        PagesName.ReviewsSreen : (context) => ReviewsSreen(),
        PagesName.AddReviewScreen : (context) => AddReviewScreen(),
        PagesName.AddressScreen : (context) => AddressScreen(),
        PagesName.PaymentScreen : (context) => PaymentScreen(),
        PagesName.AddCardScreen : (context) => AddCardScreen(),
        PagesName.CheckoutScreen : (context) => CheckoutScreen(),
        PagesName.HomeNavigator : (context) => HomeNavigator(),
        PagesName.WhishlistScreen : (context) => WhishlistScreen(),
        PagesName.BrandScreen : (context) => BrandScreen(),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: spalshscreen(),
    );
  }
}
