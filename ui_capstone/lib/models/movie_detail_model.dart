class MovieDetailModel {
  final String posterPath;
  final String title;
  final List<String> genres;
  final double voteAverage;
  final String overview;

  MovieDetailModel({
    required this.posterPath,
    required this.title,
    required this.genres,
    required this.voteAverage,
    required this.overview,
  });

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) {
    final List genres = json['genres'];
    final List<String> parsedGenres = genres.map((genre) => genre['name'] as String).toList();

    return MovieDetailModel(
      posterPath: json['poster_path'],
      title: json['title'],
      genres: parsedGenres,
      voteAverage: json['vote_average'],
      overview: json['overview'],
    );
  }
}
