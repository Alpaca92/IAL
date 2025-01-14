import 'package:flutter/material.dart';
import 'package:ui_clone01_2025/home_screen.dart';

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
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: Color(0xff1f1f1f)),
      home: const HomeScreen(),
    );
  }
}
