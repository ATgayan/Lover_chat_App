import 'package:flutter/material.dart';
import 'package:affinity/widget/Chatwindow.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFD1724),
        leading: const Padding(
          padding: EdgeInsets.all(6.0), 
          child: CircleAvatar(
           
          ),
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
      body: const Chatwindow(),
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFFFD1724),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            border: OutlineInputBorder(),
            
          ),
        ),
      )
    );
  }
}
