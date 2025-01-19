import 'package:flutter/material.dart';
import 'package:ui_capstone/components/movie_section_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 80),
            MovieSectionList(
              title: 'Popular Movies',
            ),
          ],
        ),
      ),
    );
  }
}
