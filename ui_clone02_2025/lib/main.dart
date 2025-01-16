import 'package:flutter/material.dart';
import 'package:ui_clone02_2025/home.dart';

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
        scaffoldBackgroundColor: const Color(0xffe64d3d),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffe64d3d),
        ),
      ),
      home: const Home(),
    );
  }
}
