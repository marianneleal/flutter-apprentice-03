// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

void main() {
  // 1
  runApp(const Fooderlich()); // Fooderlich = root widget
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override // every stateless widget must override the build method
  Widget build(BuildContext context) {
    // TODO: Create theme
    // TODO: Apply Home widget
    // 3
    return MaterialApp( // MaterialApp = uses material design system look and feel, contains scaffold
      // TODO: Add theme
      title: 'Fooderlich',
      // 4
      home: Scaffold( // Scaffold defines layout and structure of app, has 2 properties: AppBar and Body
        // TODO: Style the title
        appBar: AppBar(title: const Text('Fooderlich'), centerTitle: true, ),
        // TODO: Style the body text
        body: const Center(child: Text('Let\'s get cooking 👩‍🍳')),
      ),
    );
  }
}
