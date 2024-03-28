import 'package:flutter/material.dart';
import 'package:package_of_the_week/screens/device_info.dart';
import 'package:package_of_the_week/screens/font_awesome_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const DeviceInfoScreen(),
            )),
            child: const Text('Device Info'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const FontAwesomeFlutterScreen(),
            )),
            child: const Text('Font Awesome Flutter'),
          )
        ],
      )),
    );
  }
}
