import 'package:flutter/material.dart';
import 'package:method_channel_demo/view/home_view.dart';

class MethodChannelDemo extends StatelessWidget {
  const MethodChannelDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Method Channel Demo',
      home: HomeView(),
    );
  }
}
