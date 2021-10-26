// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';


class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  // 1
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Center(
      // TODO: Card1 Decorate Container
      child: Container(
        child: Stack(
          children: [
            // 8
            Text(
              category,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            // 9
            Positioned( // controls where you position the Text in he Stack
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
              top: 20, // 20 pixels from the top
            ),
            // 10
            Positioned(
              child: Text(
                description, // 30 pixels from the bottom, 0 to the right
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            // 11
            Positioned(
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),


      // 1
      padding: const EdgeInsets.all(16), // padding of 16 on all sides of the box
      // 2
      constraints: const BoxConstraints.expand( //constrain containers size
        width: 350,
        height: 450,
      ),
      // 3
      decoration: const BoxDecoration( // describes how to draw a box
        // 4
        image: DecorationImage( // tells the box to paint image
          // 5
          image: AssetImage('assets/mag1.png'), //set which image to paint in the box
          // 6
          fit: BoxFit.cover, // cover entire box with that image
        ),
        // 7
        borderRadius: BorderRadius.all(Radius.circular(10.0)), // rounded corners
      ),
    ),
    );
  }
}
