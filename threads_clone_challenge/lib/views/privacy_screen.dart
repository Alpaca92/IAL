import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/gaps.dart';
import '../constants/sizes.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _switchValue = true;

  void _onChanged(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy'),
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
          SwitchListTile(
            value: _switchValue,
            onChanged: _onChanged,
            activeTrackColor: Colors.black,
            inactiveTrackColor: Colors.white,
            inactiveThumbColor: Colors.grey[300],
            title: Row(
              children: [
                FaIcon(FontAwesomeIcons.lock),
                Gaps.h12,
                Text('Private profile'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
