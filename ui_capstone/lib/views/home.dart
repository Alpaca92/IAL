import 'package:flutter/material.dart';
import 'package:ui_capstone/widgets/title.dart';

// 가장 인기 있는 영화 목록이 표시되어야 합니다.
// https://movies-api.nomadcoders.workers.dev/popular

// 극장에서 상영 중인 영화 목록이 표시되어야 합니다.
// https://movies-api.nomadcoders.workers.dev/now-playing

// 곧 개봉할 영화 목록이 표시되어야 합니다.
// https://movies-api.nomadcoders.workers.dev/coming-soon

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                SizedBox(height: 80),
                TitleWidget(title: 'Popular Movies'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
