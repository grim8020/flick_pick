import 'package:flick_pick/start_screen.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: const StartScreen(),
    );
  }
}
