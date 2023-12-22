import 'package:chat_app/src/domain/models/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'Hola mundo', fromWho: FromWho.he),
  ];

  Future<void> sendMessage(String text) async {
    // TODO: Implementar el envio de mensajes
  }
}
