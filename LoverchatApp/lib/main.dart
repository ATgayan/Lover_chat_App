import 'package:affinity/pages/Chat.dart';
import 'package:affinity/pages/loading.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


  void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/loading',
      routes: {
        '/loading': (context) => const LoadingScreen(),
        '/Home': (context) => const Chat()
      },
      title: 'LoveChat',
     
      debugShowCheckedModeBanner: false,
    );
  }
}
