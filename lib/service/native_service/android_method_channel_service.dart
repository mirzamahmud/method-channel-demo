import 'package:flutter/services.dart';

class AndroidMethodChannelService {
  // ======================== setup channel name ===============================
  static const MethodChannel _channel = MethodChannel('battery_health');

  // ======================== get battery health condition =====================
  static Future<String?> getBatteryHealth() async {
    try {
      // ===================== invoke a method on this channel =================
      final String? health = await _channel.invokeMethod('getBatteryHealth');
      return health;
    } on PlatformException catch (e) {
      return "Failed to get battery health: '${e.message}'.";
    }
  }
}
