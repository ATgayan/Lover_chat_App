import 'package:affinity/Model/Massege.dart';
import 'package:affinity/Theme/Color.dart';
import 'package:flutter/material.dart';


class Chatwindow extends StatelessWidget {

  final List<ChatMessage> messages;

  const Chatwindow({super.key, required this.messages});


  @override
  Widget build(BuildContext context) {
    

    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.customGradient
      ),
      child: ListView.builder(
        itemCount: messages.length,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        itemBuilder: (context, index) {
          final message = messages[index];

   
          final isSender = message.isSender;

          return Align(
            alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  gradient: isSender? AppColors.mriseverGradient : AppColors.msenderGradient,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(12),
                    topRight: const Radius.circular(12),
                    bottomLeft:
                        isSender ? const Radius.circular(12) : Radius.zero,
                    bottomRight:
                        isSender ? Radius.zero : const Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment:
                      isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    Text(
                      message.message,
                      style: TextStyle(
                        color: isSender ? Colors.white : Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _formatTime(message.time),
                      style: TextStyle(
                        color: isSender ? Colors.white70 : Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Helper function to format time (e.g., HH:mm AM/PM)
  String _formatTime(DateTime time) {
    final hours = time.hour > 12 ? time.hour - 12 : time.hour;
    final minutes = time.minute.toString().padLeft(2, '0');
    final period = time.hour >= 12 ? "PM" : "AM";
    return "$hours:$minutes $period";
  }
}
  