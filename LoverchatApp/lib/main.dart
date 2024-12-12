import 'package:affinity/pages/Chat.dart';
import 'package:affinity/pages/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/loading',
      routes: {
        '/loading': (context) => const LoadingScreen(),
        '/Home': (context) => Chat()
      },
      title: 'LoveChat',
     
      debugShowCheckedModeBanner: false,
    );
  }
}
