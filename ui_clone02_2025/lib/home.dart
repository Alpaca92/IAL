import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_clone02_2025/widgets/selectable_list.dart';
import 'package:ui_clone02_2025/widgets/time_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const List<int> timerList = [900, 1200, 1500, 1800, 2100];
  int selectedIndex = 2;
  late int remainingTime;

  @override
  void initState() {
    super.initState();
    remainingTime = timerList[selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: GoogleFonts.notoSans(
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
        ),
        title: const Text('POMOTIMER'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TimeCard(),
              const SizedBox(
                width: 10,
              ),
              Text(
                ':',
                style: TextStyle(
                  fontSize: 80,
                  color: Colors.white.withValues(alpha: 0.5),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const TimeCard(),
            ],
          ),
          SelectableList(),
        ],
      ),
    );
  }
}
