import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ui_capstone/models/movie_detail_model.dart';
import 'package:ui_capstone/models/movielist_model.dart';

class ApiService {
  static const String baseUrl = 'https://movies-api.nomadcoders.workers.dev';
  static const String popular = '$baseUrl/popular';
  static const String nowPlaying = '$baseUrl/now-playing';
  static const String comingSoon = '$baseUrl/coming-soon';
  static const String movieDetail = '$baseUrl/movie';

  static Future<MovieResults> getPopularMovies() async {
    final Uri url = Uri.parse(popular);
    final response = await http.get(url);

    if (response.statusCode != 200) throw Error();

    final Map<String, dynamic> json = jsonDecode(response.body);
    final MovieListModel movies = MovieListModel.fromJson(json);

    return movies.results;
  }

  static Future<MovieResults> getNowPlayingMovies() async {
    final Uri url = Uri.parse(nowPlaying);
    final response = await http.get(url);

    if (response.statusCode != 200) throw Error();

    final Map<String, dynamic> json = jsonDecode(response.body);
    final MovieListModel movies = MovieListModel.fromJson(json);

    return movies.results;
  }

  static Future<MovieResults> getCommingSoonMovies() async {
    final Uri url = Uri.parse(comingSoon);
    final response = await http.get(url);

    if (response.statusCode != 200) throw Error();

    final Map<String, dynamic> json = jsonDecode(response.body);
    final MovieListModel movies = MovieListModel.fromJson(json);

    return movies.results;
  }

  static Future<MovieDetailModel> getMovieDetail(int id) async {
    final Uri url = Uri.parse('$movieDetail?id=$id');
    final response = await http.get(url);

    if (response.statusCode != 200) throw Error();

    final Map<String, dynamic> json = jsonDecode(response.body);
    final MovieDetailModel movie = MovieDetailModel.fromJson(json);

    return movie;
  }
}
