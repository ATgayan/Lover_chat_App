import 'package:affinity/Model/Massege.dart'; // Import the model

List<ChatMessage> dummyChatMessages = [
  ChatMessage(
    message: "Hey! How are you doing?",
    time: DateTime.now().subtract(const Duration(minutes: 5)),
    isSender: true,
    deliveryStatus: true,
  ),
  ChatMessage(
    message: "I'm good, thanks! How about you?",
    time: DateTime.now().subtract(const Duration(minutes: 4)),
    isSender: false,
    deliveryStatus: true,
  ),
  ChatMessage(
    message: "Doing great! Any plans for the weekend?",
    time: DateTime.now().subtract(const Duration(minutes: 3)),
    isSender: true,
    deliveryStatus: true,
  ),
  ChatMessage(
    message: "Not yet. Do you have any suggestions?",
    time: DateTime.now().subtract(const Duration(minutes: 2)),
    isSender: false,
    deliveryStatus: false,
  ),
  ChatMessage(
    message: "How about a movie night? 🎥",
    time: DateTime.now().subtract(const Duration(minutes: 1)),
    isSender: true,
    deliveryStatus: true,
  ),
];
