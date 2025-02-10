import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: IconButton(
            icon: FaIcon(FontAwesomeIcons.globe),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.instagram),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.sliders),
              onPressed: () {
                // TODO: push to settings screen
              },
            ),
          ],
        ),
        SliverToBoxAdapter(),
      ],
    );
  }
}
