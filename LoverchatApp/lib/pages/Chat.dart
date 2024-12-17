import 'package:affinity/Model/Massege.dart';
import 'package:affinity/StaticData/massageData.dart';
import 'package:flutter/material.dart';
import 'package:affinity/widget/Chatwindow.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFD1724),
        leading: const Padding(
          padding: EdgeInsets.all(6.0),
          child: CircleAvatar(),
        ),
        title: const Text(
          'King',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
        
          Expanded(
            child: Chatwindow(messages: dummyChatMessages),
          ),
          Container(
            color: const Color(0xFFFD1724),
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              children: [
                const SizedBox(width: 20.0),
                const Icon(Icons.attach_file, color: Colors.white),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: 'Enter message',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Transform.rotate(
                  angle: -0.80,
                  child: GestureDetector(
                    onTap: () {
                      final text = _controller.text.trim();
                      if (text.isNotEmpty) {
                        setState(() {
                          dummyChatMessages.add(ChatMessage(
                            message: text,
                            time: DateTime.now(),
                            isSender: true,
                            deliveryStatus: true,
                          ));
                        });
                        _controller.clear();
                      }
                    },
                    child: const Icon(
                      Icons.send,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
