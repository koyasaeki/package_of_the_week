import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class DeviceInfoScreen extends StatefulWidget {
  const DeviceInfoScreen({super.key});

  @override
  State<DeviceInfoScreen> createState() => _State();
}

class _State extends State<DeviceInfoScreen> {
  final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();
  BaseDeviceInfo? _deviceInfo;

  Future<void> getDeviceInfo() async {
    final deviceInfo = Platform.isAndroid
        ? await _deviceInfoPlugin.androidInfo
        : await _deviceInfoPlugin.iosInfo;

    setState(() {
      _deviceInfo = deviceInfo;
    });
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      getDeviceInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _deviceInfo == null
                ? const CircularProgressIndicator()
                : Text('Device Info: ${_deviceInfo.toString()}'),
          ],
        ),
      ),
    );
  }
}
