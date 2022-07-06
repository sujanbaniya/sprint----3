import 'package:flutter/material.dart';

class GyroscopeScreen extends StatefulWidget {
  const GyroscopeScreen({Key? key}) : super(key: key);

  @override
  State<GyroscopeScreen> createState() => _GyroscopeScreenState();
}

class _GyroscopeScreenState extends State<GyroscopeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gyroscope"),
      ),
    );
  }
}
