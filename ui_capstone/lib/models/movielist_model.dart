typedef MovieResults = List<MovieModel>;

class MovieModel {
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final num voteAverage;
  final num voteCount;

  MovieModel.fromJson(Map<String, dynamic> json)
      : adult = json['adult'],
        backdropPath = json['backdrop_path'],
        genreIds = json['genre_ids'].cast<int>(),
        id = json['id'],
        originalLanguage = json['original_language'],
        originalTitle = json['original_title'],
        overview = json['overview'],
        popularity = json['popularity'],
        posterPath = json['poster_path'],
        releaseDate = json['release_date'],
        title = json['title'],
        video = json['video'],
        voteAverage = json['vote_average'],
        voteCount = json['vote_count'];
}

class MovieListModel {
  final int page;
  final int totalPages;
  final int totalResults;
  final MovieResults results;

  MovieListModel({
    required this.page,
    required this.totalPages,
    required this.totalResults,
    required this.results,
  });

  factory MovieListModel.fromJson(Map<String, dynamic> json) {
    final List results = json['results'];
    MovieResults parsedResults = results.map((result) => MovieModel.fromJson(result)).toList();

    return MovieListModel(
      page: json['page'],
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
      results: parsedResults,
    );
  }
}
