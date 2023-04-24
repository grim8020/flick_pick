class Movie {
  late int id;
  late String title;
  late int year;

  Movie({required this.id, required this.title, required this.year});

  Movie.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['imdbID'];
    title = parsedJson['title'];
    year = parsedJson['year'];
  }
}
