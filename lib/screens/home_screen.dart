import 'package:flutter/material.dart';
import '../helpers/tts_helper.dart';
import '../main.dart'; // Importa função de notificações

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TTSHelper ttsHelper = TTSHelper(); // Instância do TTS

    return Scaffold(
      appBar: AppBar(
        title: const Text('WearOS Assistant'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ttsHelper.speak('Olá! Bem-vindo ao WearOS Assistant.');
              },
              child: const Text('Falar Mensagem'),
            ),
            const SizedBox(height: 20),
            const ElevatedButton(
              onPressed: showNotification, // Chama notificação
              child: Text('Enviar Notificação'),
            ),
          ],
        ),
      ),
    );
  }
}
