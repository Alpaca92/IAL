import 'package:flutter/material.dart';
import 'package:ui_capstone/components/movie_section_list.dart';
import 'package:ui_capstone/types/movie/index.dart';

class HomeView extends StatelessWidget {
  static const MovieList list = [
    {
      'title': 'The Shawshank Redemption',
      'year': 1994,
      'rating': 9.3,
      'duration': '2h 22min',
      'genre': 'Drama',
      'director': 'Frank Darabont',
      'cast': ['Tim Robbins', 'Morgan Freeman', 'Bob Gunton'],
      'image': 'https://bit.ly/3vZQ9Zz',
    },
    {
      'title': 'The Shawshank Redemption',
      'year': 1994,
      'rating': 9.3,
      'duration': '2h 22min',
      'genre': 'Drama',
      'director': 'Frank Darabont',
      'cast': ['Tim Robbins', 'Morgan Freeman', 'Bob Gunton'],
      'image': 'https://bit.ly/3vZQ9Zz',
    },
    {
      'title': 'The Shawshank Redemption',
      'year': 1994,
      'rating': 9.3,
      'duration': '2h 22min',
      'genre': 'Drama',
      'director': 'Frank Darabont',
      'cast': ['Tim Robbins', 'Morgan Freeman', 'Bob Gunton'],
      'image': 'https://bit.ly/3vZQ9Zz',
    },
    {
      'title': 'The Shawshank Redemption',
      'year': 1994,
      'rating': 9.3,
      'duration': '2h 22min',
      'genre': 'Drama',
      'director': 'Frank Darabont',
      'cast': ['Tim Robbins', 'Morgan Freeman', 'Bob Gunton'],
      'image': 'https://bit.ly/3vZQ9Zz',
    },
  ];

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
                MovieSectionList(
                  title: 'Popular Movies',
                  movies: list,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
