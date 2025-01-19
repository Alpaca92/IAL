import 'package:flutter/material.dart';
import 'package:ui_capstone/components/movie_section_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              SizedBox(height: 80),
              MovieSectionList(
                title: 'Popular Movies',
                fetchType: MovieListFetchType.popular,
              ),
              SizedBox(height: 40),
              MovieSectionList(
                title: 'Now in Cinemas',
                fetchType: MovieListFetchType.nowPlaying,
                withTitle: true,
              ),
              SizedBox(height: 40),
              MovieSectionList(
                title: 'Comming Soon',
                fetchType: MovieListFetchType.comingSoon,
                withTitle: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
