import 'package:eshopping/screen/bottom_screen/packagescreen.dart';
import 'package:eshopping/screen/bottom_screen/home.dart';
import 'package:eshopping/screen/bottom_screen/aboutus.dart';
import 'package:eshopping/screen/bottom_screen/servicescreen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  List<Widget> lstWidget = [
    const HomeScreen(),
    const PackageScreen(),
    const ServiceScreen(),
    const AboutUs(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: lstWidget[_selectedIndex],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan[200],
        onPressed: () {
          Navigator.pushNamed(context, '/addProduct');
        },
        child: const Icon(Icons.add_a_photo_rounded), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 13, 31, 168),
        elevation: 5,
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin:
            5, //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.home_repair_service,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.build,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
