import 'package:flutter/material.dart';
import 'package:tiktok_clone01/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'DMSerifText',
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: const HomeView(),
    );
  }
}
