import 'package:cinema/ui/pages/home.dart';
import 'package:cinema/ui/pages/search.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Home(),
        '/search': (context) => const Search(),
      },
    );
  }
}
