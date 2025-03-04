import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Activity')),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.size12),
            child: Text(
              'New',
              style: TextStyle(
                fontSize: Sizes.size18,
                color: Colors.grey.shade500,
              ),
            ),
          ),
          Gaps.v12,
          Dismissible(
            key: const Key('x'),
            background: Container(
              color: Colors.green,
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.only(left: Sizes.size10),
                child: FaIcon(
                  FontAwesomeIcons.checkDouble,
                  color: Colors.white,
                  size: Sizes.size32,
                ),
              ),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              child: const Padding(
                padding: EdgeInsets.only(right: Sizes.size10),
                child: FaIcon(
                  FontAwesomeIcons.trashCan,
                  color: Colors.white,
                  size: Sizes.size32,
                ),
              ),
            ),
            child: ListTile(
              leading: Container(
                width: Sizes.size52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: Sizes.size1,
                  ),
                ),
                child: const Center(
                  child: FaIcon(FontAwesomeIcons.bell, color: Colors.black),
                ),
              ),
              title: RichText(
                text: TextSpan(
                  text: 'Account updates:',
                  style: const TextStyle(
                    fontSize: Sizes.size16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    const TextSpan(
                      text: ' Upload longer videos',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                    TextSpan(
                      text: ' 1h',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              trailing: const FaIcon(
                FontAwesomeIcons.chevronRight,
                size: Sizes.size16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
