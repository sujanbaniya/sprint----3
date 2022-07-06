import 'package:flutter/material.dart';

class SenserScreen extends StatefulWidget {
  const SenserScreen({Key? key}) : super(key: key);

  @override
  State<SenserScreen> createState() => _SenserScreenState();
}

class _SenserScreenState extends State<SenserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Senser"),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gyroscope');
              },
              child: const Text(
                'Gyroscope',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(248, 2, 2, 2)),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/acceleometer');
              },
              child: const Text(
                'Acceleometer',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(248, 2, 2, 2)),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/proximity');
              },
              child: const Text(
                'Proximity',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(248, 2, 2, 2)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
