// lib/helpers/audio_helper.dart
import 'package:flutter_tts/flutter_tts.dart';

class AudioHelper {
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage("pt-BR");
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(text);
  }

  Future<void> stop() async {
    await flutterTts.stop();
  }
}
