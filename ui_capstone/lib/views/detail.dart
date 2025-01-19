import 'package:flutter/material.dart';
import 'package:ui_capstone/models/movie_detail_model.dart';
import 'package:ui_capstone/services/api.dart';

class DetailView extends StatelessWidget {
  static const String imageBaseUrl = 'https://image.tmdb.org/t/p/w500';
  final int id;

  const DetailView({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final Future<MovieDetailModel> movie = ApiService.getMovieDetail(id);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: FutureBuilder(
          future: movie,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final MovieDetailModel movie = snapshot.data!;

            return Stack(
              children: [
                Positioned.fill(
                  child: Image.network(
                    '$imageBaseUrl${movie.posterPath}',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  color: Colors.black.withValues(alpha: 0.5),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),
                      Text(
                        movie.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      // FIXME: RichText widget 살펴보기
                      Row(
                        children: [
                          Text(
                            movie.voteAverage.toString(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '|',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            movie.genres.join(', '),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Storyline',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        movie.overview,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
