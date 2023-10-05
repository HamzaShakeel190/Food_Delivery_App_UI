// chat_provider.dart
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<ChatMessage> _chatMessages = [];

  List<ChatMessage> get chatMessages => _chatMessages;

  void addMessage(ChatMessage message) {
    _chatMessages.add(message);
    notifyListeners();
  }
}

class ChatMessage {
  final String sender;
  final String message;
  final DateTime timestamp;

  ChatMessage({
    required this.sender,
    required this.message,
    required this.timestamp,
  });
}
