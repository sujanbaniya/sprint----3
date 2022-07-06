import 'dart:async';
import 'package:all_sensors2/all_sensors2.dart';
import 'package:flutter/material.dart';

class ProximityScreen extends StatefulWidget {
  const ProximityScreen({Key? key}) : super(key: key);
  @override
  State<ProximityScreen> createState() => _ProximityScreenState();
}

class _ProximityScreenState extends State<ProximityScreen> {
  double _proximityValue = 0;
  final List<StreamSubscription<dynamic>> _streamSubscriptions =
      <StreamSubscription<dynamic>>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _streamSubscriptions.add(
      proximityEvents!.listen((ProximityEvent event) {
        setState(() {
          _proximityValue = event.proximity;
        });
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sensor Example Proximity"),
        ),
        body: Center(
          child: _proximityValue >= 4
              ? const Text(
                  'Object is Far',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )
              : const Text('Object is Near',
                  style: TextStyle(
                    fontSize: 25,
                  )),
        ));
  }
}
