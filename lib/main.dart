import 'package:flick_pick/movie_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlickPick());
}

class FlickPick extends StatelessWidget {
  const FlickPick({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MovieList(),
    );
  }
}
