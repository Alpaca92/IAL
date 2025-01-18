import 'package:flutter/material.dart';
import 'package:ui_capstone/services/api.dart';
import 'package:ui_capstone/widgets/title.dart';

class MovieSectionList extends StatelessWidget {
  final String title;
  // final MovieList movies;
  final Future<List<Map<String, dynamic>>> movies = ApiService.getPopularMovies();

  MovieSectionList({
    super.key,
    required this.title,
    // required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(title: title),
      ],
    );
  }
}
