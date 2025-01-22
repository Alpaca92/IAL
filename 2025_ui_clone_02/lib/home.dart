import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:ui_clone02_2025/enums/index.dart';
import 'package:ui_clone02_2025/widgets/time_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const int startIndex = 2;
  static const List<int> timerList = [900, 1200, 1500, 1800, 2100];
  int selectedIndex = startIndex;
  late int remainingTime;
  final ScrollController _controller = ScrollController();

  void _onScrollEnd() {
    final double itemWidth = 100;
    final double offset = _controller.offset;
    final int index = (offset / itemWidth).round() + startIndex;

    setState(() {
      // stop the previous timer
      selectedIndex = index;
      remainingTime = timerList[index % timerList.length];
    });
  }

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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimeCard(
                  remainingTime: remainingTime,
                  type: TimeCardType.minute,
                ),
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
                TimeCard(
                  remainingTime: remainingTime,
                  type: TimeCardType.second,
                ),
              ],
            ),
            SizedBox(height: 50),
            NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification notification) {
                if (notification is ScrollStartNotification) {
                  //
                } else if (notification is ScrollEndNotification) {
                  _onScrollEnd();
                }
                return true;
              },
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  itemBuilder: (context, index) {
                    final item = timerList[index % timerList.length];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                          color: index == selectedIndex
                              ? Colors.white
                              : Colors.transparent,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            '${item ~/ 60}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: index == selectedIndex
                                  ? Color(0xffe64d3d)
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 80),
            Container(
              width: 100,
              height: 100,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: HeroIcon(
                  HeroIcons.play,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
