import 'package:flutter/material.dart';
import 'package:ui_clone01/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Clone 01',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff1f1f1f),
        primaryColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}
