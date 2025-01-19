import 'package:flutter/material.dart';
import 'package:ui_capstone/models/movielist_model.dart';
import 'package:ui_capstone/services/api.dart';
import 'package:ui_capstone/views/detail.dart';
import 'package:ui_capstone/widgets/title.dart';

enum MovieListFetchType { popular, nowPlaying, comingSoon }

class MovieSectionList extends StatelessWidget {
  final String title;
  final MovieListFetchType fetchType;
  final bool withTitle;
  late final Future<MovieResults> movies;

  MovieSectionList({
    super.key,
    required this.title,
    required this.fetchType,
    this.withTitle = false,
  }) {
    switch (fetchType) {
      case MovieListFetchType.popular:
        movies = ApiService.getPopularMovies();
        break;
      case MovieListFetchType.nowPlaying:
        movies = ApiService.getNowPlayingMovies();
        break;
      case MovieListFetchType.comingSoon:
        movies = ApiService.getCommingSoonMovies();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(title: title),
        SizedBox(height: 20),
        SizedBox(
          height: withTitle ? 240 : 200,
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

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailView(id: movie.id)));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: withTitle ? 200 : 300,
                          height: 200,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage('https://image.tmdb.org/t/p/w500${movie.posterPath}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (withTitle)
                          Text(
                            movie.title,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                      ],
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
