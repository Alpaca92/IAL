import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

enum Direction { right, left }

enum PAGE { first, second }

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  Direction _direction = Direction.right;
  PAGE _showingPage = PAGE.first;

  void _onPanUpdate(DragUpdateDetails details) {
    if (details.delta.dx > 0) {
      setState(() {
        _direction = Direction.right;
      });
    } else if (details.delta.dx < 0) {
      setState(() {
        _direction = Direction.left;
      });
    }
  }

  void _onPanEnd(DragEndDetails details) {
    if (_direction == Direction.right) {
      setState(() {
        _showingPage = PAGE.first;
      });
    } else if (_direction == Direction.left) {
      setState(() {
        _showingPage = PAGE.second;
      });
    }
  }

  void _onPressed() {
    if (_showingPage == PAGE.first) return;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: _onPanUpdate,
      onPanEnd: _onPanEnd,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size24),
          child: SafeArea(
            child: AnimatedCrossFade(
              firstChild: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.v80,
                  Text(
                    'Watch cool videos',
                    style: TextStyle(
                      fontSize: Sizes.size40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gaps.v16,
                  Text(
                    'Videos are personalized for you based on what you watch, like, and share.',
                    style: TextStyle(fontSize: Sizes.size20),
                  ),
                ],
              ),
              secondChild: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.v80,
                  Text(
                    'Follow the rules',
                    style: TextStyle(
                      fontSize: Sizes.size40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gaps.v16,
                  Text(
                    'Take care of one another please. Be respectful and kind.',
                    style: TextStyle(fontSize: Sizes.size20),
                  ),
                ],
              ),
              crossFadeState:
                  _showingPage == PAGE.first
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 300),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: AnimatedOpacity(
            opacity: _showingPage == PAGE.second ? 1 : 0,
            duration: const Duration(microseconds: 300),
            child: CupertinoButton(
              color: Theme.of(context).primaryColor,
              onPressed: _onPressed,
              child: const Text(
                'Ender the app !',
                style: TextStyle(fontSize: Sizes.size20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
