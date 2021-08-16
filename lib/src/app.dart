import 'package:flutter/material.dart';

import './ui/movie_list.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: MovieList(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
