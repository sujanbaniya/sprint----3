import 'dart:async';
import 'package:all_sensors2/all_sensors2.dart';
import 'package:flutter/material.dart';

class Accelerometer extends StatefulWidget {
  const Accelerometer({Key? key}) : super(key: key);
  @override
  State<Accelerometer> createState() => _AccelerometerState();
}

class _AccelerometerState extends State<Accelerometer> {
  List<double> _accelerometerValues = <double>[];
  final List<StreamSubscription<dynamic>> _streamSubscriptions =
      <StreamSubscription<dynamic>>[];
  @override
  void initState() {
    _streamSubscriptions.add(
      accelerometerEvents!.listen(
        (AccelerometerEvent event) {
          setState(() {
            _accelerometerValues = <double>[event.x, event.y, event.z];
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //convert to ! decimal point
    final List<String> accelerometer =
        _accelerometerValues.map((double v) => v.toStringAsFixed(1)).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accelerometer'),
      ),
      body: Center(
        child: Text(
          'Accelerometer:\n X: ${accelerometer[0]}, Y : ${accelerometer[1]}, Z : ${accelerometer[2]}',
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
