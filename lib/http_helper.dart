import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'movie.dart';

class HttpHelper {
  final String urlBase = 'http://www.omdbapi.com/?';
  final String urlKey = 'apikey=37f36ac5';
  final String movieTitleURL = 't=';
  final String movieYearURL = 'y=';
  final String imdbIdUrl = 'i=';

  Future<List?> getUpcoming() async {
    final String upcoming = urlBase + movieTitleURL + urlKey;

    http.Response result = await http.get(Uri.parse(upcoming));
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      String responseBody = result.body;
      return movies;
    } else {
      return null;
    }
  }
}
