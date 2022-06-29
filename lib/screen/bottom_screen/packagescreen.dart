import 'package:flutter/material.dart';

class PackageScreen extends StatefulWidget {
  const PackageScreen({Key? key}) : super(key: key);

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Packages'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [Image.asset('assets/images/package.jpg')],
      ),
    );
  }
}
