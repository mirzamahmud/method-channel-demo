import 'package:flutter/material.dart';
import 'package:method_channel_demo/service/native_service/android_method_channel_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String batteryHealth = 'Unknown';

  @override
  void initState() {
    super.initState();
    fetchBatteryHealth();
  }

  Future<void> fetchBatteryHealth() async {
    String? health = await AndroidMethodChannelService.getBatteryHealth();
    setState(() {
      batteryHealth = health ?? 'Unknown';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Method Channel',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
      ),
      body: Center(
        child: Text(
          'Battery Health: $batteryHealth',
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
