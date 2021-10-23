// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';


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
    // TODO: Apply Home widget
    // 3
    return MaterialApp( // MaterialApp = uses material design system look and feel, contains scaffold
      theme: theme, //added theme property
      title: 'Fooderlich',
      // 4
      home: Scaffold( // Scaffold defines layout and structure of app, has 2 properties: AppBar and Body
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Fooderlich',
            style: theme.textTheme.headline6, //text styling
          ),
        ),

        body: Center(
          child: Text('Let\'s get cooking 👩‍🍳',
            style: theme.textTheme.headline1), // body text styling
        ),
      ),
    );
  }
}
