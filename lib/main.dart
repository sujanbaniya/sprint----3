import 'package:BikeServicing/screen/cartscreen.dart';
import 'package:BikeServicing/screen/product-details_screen.dart';
import 'package:BikeServicing/screen/splash.dart';
import 'package:flutter/material.dart';

import 'screen/add_product.dart';
import 'screen/bottom_screen/buy/sell.dart';
import 'screen/bottom_screen/packagescreen.dart';
import 'screen/bottom_screen/servicescreen.dart';
import 'screen/dashboard.dart';
import 'screen/forgetpassword.dart';
import 'screen/login.dart';
import 'screen/register.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ServiceScreen(),
        '/cart': (context) => const PackageScreen(),
        '/addProduct': (context) => const AddProductScreen(),
        '/forgetpassword': (context) => const ForgetPassword(),
        '/productdetailscreen': (context) => const ProductDetailScreen(),
        '/cartscreen': (context) => const CartScreen(),

        // '/': (context) => const SenserScreen(),
        // '/acceleometer': (context) => const Accelerometer(),
        // '/proximity': (context) => ProximityScreen(),
        //  '/gyroscope': (context) => const GyroscopeScreen(),
      },
    ),
  );
}
