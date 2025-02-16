import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/gaps.dart';
import '../constants/sizes.dart';
import 'privacy_screen.dart';

typedef IconText = Map<String, dynamic>;

const List<IconText> _iconTexts = [
  {
    'icon': FontAwesomeIcons.userPlus,
    'text': 'Follow and invite friends',
    'screen': Placeholder(),
  },
  {
    'icon': FontAwesomeIcons.bell,
    'text': 'Notifications',
    'screen': Placeholder(),
  },
  {
    'icon': FontAwesomeIcons.lock,
    'text': 'Privacy',
    'screen': PrivacyScreen(),
  },
  {
    'icon': FontAwesomeIcons.circleUser,
    'text': 'Account',
    'screen': Placeholder(),
  },
  {
    'icon': FontAwesomeIcons.lifeRing,
    'text': 'Help',
    'screen': Placeholder(),
  },
  {
    'icon': FontAwesomeIcons.circleInfo,
    'text': 'About',
    'screen': Placeholder(),
  },
];

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: Sizes.size1 / 2,
          ),
        ),
        leadingWidth: Sizes.size80,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: [
              Gaps.h12,
              FaIcon(FontAwesomeIcons.chevronLeft),
              Gaps.h6,
              Text(
                'Back',
                style: TextStyle(
                  fontSize: Sizes.size18,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Gaps.v24,
          ..._iconTexts.map(
            (iconText) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => iconText['screen'],
                    ),
                  );
                },
                child: ListTile(
                  leading: FaIcon(iconText['icon']),
                  title: Text(iconText['text']),
                  trailing: FaIcon(FontAwesomeIcons.chevronRight),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
