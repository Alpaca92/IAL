import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://movies-api.nomadcoders.workers.dev';
  static const String popular = '$baseUrl/popular';
  static const String nowPlaying = '$baseUrl/now-playing';
  static const String comingSoon = '$baseUrl/coming-soon';

  static Future<List<Map<String, dynamic>>> getPopularMovies() async {
    List<Map<String, dynamic>> list = [];
    final Uri url = Uri.parse(popular);
    final response = await http.get(url);

    if (response.statusCode != 200) throw Error();

    final movies = jsonDecode(response.body);
    print(movies);

    return list;
  }
}
