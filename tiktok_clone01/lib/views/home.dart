import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // FIXME: 임시로 카메라 펀치홀을 피했는데, 이후에는 다른 방법을 찾아야 함
        //
        toolbarHeight: 100,
        title: FaIcon(
          FontAwesomeIcons.twitter,
          color: Color(0xff4e98e9),
          size: 40,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 140),
              Text(
                'See what\'s happening in the world right now.',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 140),
              Text('continue with Twitter'),
            ],
          ),
        ),
      ),
    );
  }
}
