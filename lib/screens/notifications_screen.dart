// lib/screens/notifications_screen.dart
import 'package:flutter/material.dart';
import '../helpers/audio_helper.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  NotificationsScreenState createState() => NotificationsScreenState();
}

class NotificationsScreenState extends State<NotificationsScreen> {
  final AudioHelper audioHelper = AudioHelper();

  void _readNotification(String message) {
    audioHelper.speak(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificações'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Mensagem 1'),
            subtitle: const Text('Você tem uma nova mensagem.'),
            onTap: () => _readNotification('Você tem uma nova mensagem.'),
          ),
          ListTile(
            title: const Text('Alerta de segurança'),
            subtitle: const Text('Tempestade se aproximando!'),
            onTap: () => _readNotification('Tempestade se aproximando!'),
          ),
        ],
      ),
    );
  }
}
