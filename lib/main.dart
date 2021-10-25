// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';



void main() {
  // 1
  runApp(const Fooderlich()); // Fooderlich = root widget
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override // every stateless widget must override the build method
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark(); // variable that holds the theme
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
