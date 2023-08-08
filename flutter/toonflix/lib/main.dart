import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<App> {
  List<int> numbers = [];

  void onPressed() {
    setState(() {
      numbers.add(numbers.length);

      debugPrint('$numbers');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF3EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'click here',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                '${numbers.length}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              IconButton(
                onPressed: onPressed,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
