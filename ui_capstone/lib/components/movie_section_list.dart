import 'package:flutter/material.dart';
import 'package:ui_capstone/models/movielist_model.dart';
import 'package:ui_capstone/services/api.dart';
import 'package:ui_capstone/widgets/title.dart';

class MovieSectionList extends StatelessWidget {
  final String title;
  final Future<MovieResults> movies = ApiService.getPopularMovies();

  MovieSectionList({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(title: title),
        SizedBox(height: 20),
        SizedBox(
          height: 200,
          child: FutureBuilder(
            future: movies,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final MovieModel movie = snapshot.data![index];

                  return Container(
                    width: 300,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage('https://image.tmdb.org/t/p/w500${movie.posterPath}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
