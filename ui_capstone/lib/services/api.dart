import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ui_capstone/models/movielist_model.dart';

class ApiService {
  static const String baseUrl = 'https://movies-api.nomadcoders.workers.dev';
  static const String popular = '$baseUrl/popular';
  static const String nowPlaying = '$baseUrl/now-playing';
  static const String comingSoon = '$baseUrl/coming-soon';

  static Future<MovieResults> getPopularMovies() async {
    final Uri url = Uri.parse(popular);
    final response = await http.get(url);

    if (response.statusCode != 200) throw Error();

    final Map<String, dynamic> json = jsonDecode(response.body);
    final MovieListModel movies = MovieListModel.fromJson(json);

    return movies.results;
  }
}
