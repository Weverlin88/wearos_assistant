// lib/helpers/bluetooth_helper.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class BluetoothHelper {
  static const platform = MethodChannel('com.example.wearos_assistant/bluetooth');

  Future<void> openBluetoothSettings() async {
    try {
      await platform.invokeMethod('openBluetoothSettings');
    } on PlatformException catch (e) {
      debugPrint("Erro ao abrir as configurações de Bluetooth: ${e.message}");
    }
  }
}
