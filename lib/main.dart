import 'package:eshopping/screen/add_product.dart';
import 'package:eshopping/screen/bottom_screen/packagescreen.dart';
import 'package:eshopping/screen/bottom_screen/home.dart';
import 'package:eshopping/screen/bottom_screen/servicescreen.dart';
import 'package:eshopping/screen/dashboard.dart';
import 'package:eshopping/screen/login.dart';
import 'package:eshopping/screen/register.dart';
import 'package:eshopping/screen/splash.dart';
import 'package:flutter/material.dart';

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
      },
    ),
  );
}
