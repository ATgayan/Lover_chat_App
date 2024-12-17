class ChatMessage {
  final String message;        // The text content of the message
  final DateTime time;         // Timestamp of the message
  final bool isSender;         // True if the sender, false if receiver
  final bool deliveryStatus;   // True if delivered, false otherwise

  ChatMessage({
    required this.message,
    required this.time,
    required this.isSender,
    required this.deliveryStatus,
  });

  // Factory constructor to create a ChatMessage from JSON
  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      message: json['message'] as String,
      time: DateTime.parse(json['time'] as String),
      isSender: json['isSender'] as bool,
      deliveryStatus: json['deliveryStatus'] as bool,
    );
  }

  // Method to convert a ChatMessage to JSON
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'time': time.toIso8601String(),
      'isSender': isSender,
      'deliveryStatus': deliveryStatus,
    };
  }
}
