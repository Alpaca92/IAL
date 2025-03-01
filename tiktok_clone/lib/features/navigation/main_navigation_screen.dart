import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/features/navigation/widgets/nav_tab.dart';
import 'package:tiktok_clone/features/navigation/widgets/post_video_button.dart';
import 'package:tiktok_clone/features/videos/video_timeline_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onPostVideoButtonTap() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => const Scaffold()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _selectedIndex != 0 ? Colors.white : Colors.black,
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const VideoTimelineScreen(),
          ),
          Offstage(offstage: _selectedIndex != 1, child: Container()),
          Offstage(offstage: _selectedIndex != 2, child: Container()),
          Offstage(offstage: _selectedIndex != 3, child: Container()),
          Offstage(offstage: _selectedIndex != 4, child: Container()),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          children: [
            NavTab(
              text: 'Home',
              selectedIcon: FontAwesomeIcons.house,
              icon: FontAwesomeIcons.house,
              isSelected: _selectedIndex == 0,
              onTap: () => _onTap(0),
            ),
            NavTab(
              text: 'Discover',
              selectedIcon: FontAwesomeIcons.solidCompass,
              icon: FontAwesomeIcons.compass,
              isSelected: _selectedIndex == 1,
              onTap: () => _onTap(1),
            ),
            Gaps.h24,
            GestureDetector(
              onTap: _onPostVideoButtonTap,
              child: const PostVideoButton(),
            ),
            Gaps.h24,
            NavTab(
              text: 'Inbox',
              selectedIcon: FontAwesomeIcons.solidMessage,
              icon: FontAwesomeIcons.message,
              isSelected: _selectedIndex == 3,
              onTap: () => _onTap(3),
            ),
            // custom center tab
            NavTab(
              text: 'Profile',
              selectedIcon: FontAwesomeIcons.solidUser,
              icon: FontAwesomeIcons.user,
              isSelected: _selectedIndex == 4,
              onTap: () => _onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
