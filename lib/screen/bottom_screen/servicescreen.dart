import 'package:flutter/material.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [Image.asset('assets/images/service.jpg')],
      ),
    );
  }
}
