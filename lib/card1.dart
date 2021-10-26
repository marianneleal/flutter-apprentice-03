import 'package:flutter/material.dart';

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
      // TODO: Add a stack of text
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
