import 'package:flutter/material.dart';

class VideoTimelineScreen extends StatefulWidget {
  const VideoTimelineScreen({super.key});

  @override
  State<VideoTimelineScreen> createState() => _VideoTimelineScreenState();
}

class _VideoTimelineScreenState extends State<VideoTimelineScreen> {
  int _itemCount = 4;
  final PageController _pageController = PageController();

  void _onPageChanged(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 100),
      curve: Curves.linear,
    );

    if (page == _itemCount - 1) {
      setState(() {
        _itemCount += 4;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      onPageChanged: _onPageChanged,
      itemCount: _itemCount,
      itemBuilder:
          (context, index) => Container(
            color: Colors.primaries[index % Colors.primaries.length],
            child: Center(
              child: Text(
                'Screen $index',
                style: const TextStyle(fontSize: 68),
              ),
            ),
          ),
    );
  }
}
