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
      title: 'Flutter Demo',
      theme: ThemeData(
       
      ),
      home: Scaffold(
       
        appBar: AppBar(
          title: const Text("data"),
          
          
          backgroundColor: Colors.black,
          
          
          actions: const <Widget>[
               Icon(Icons.ac_unit),
               Icon(Icons.ac_unit),
               Icon(Icons.ac_unit),
          ],
          
        ),
        body: Container(),
      ),

      debugShowCheckedModeBanner: false,
      
    );
  }
}

