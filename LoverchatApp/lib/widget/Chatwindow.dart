import 'package:affinity/Theme/Color.dart';
import 'package:flutter/material.dart';

class Chatwindow extends StatefulWidget {
  const Chatwindow({super.key});

  @override
  State<Chatwindow> createState() => _ChatwindowState();
}

class _ChatwindowState extends State<Chatwindow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.customGradient
      ),
      child: Column(
        children: [
          Container(
            height: 400,
          ),
          
        ],
      )
    );
  }
}