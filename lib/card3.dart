// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)), //rounded corners
        ),
        child: Stack(
          children: [
            Container( // add dark overlay and rounded image corners
              decoration: BoxDecoration(
                // 1
                color: Colors.black.withOpacity(0.6),
                // 2
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),

            Container(
              // 3
              padding: const EdgeInsets.all(16), // padding all sides
              // 4
              child: Column(
                // 5
                crossAxisAlignment: CrossAxisAlignment.start, // all children on the left
                children: [
                  // 6
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  // 7
                  const SizedBox(height: 8), // space between text and icon
                  // 8
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  // 9
                  const SizedBox(height: 30), // space between text and stuff below
                ],
              ),
            ),

            Center(
              // 11
              child: Wrap( // wrap = children next to each other unless no space then next line
                // 12
                alignment: WrapAlignment.start, // children left
                // 13
                spacing: 12, // space between each child
                // 14
                children: [ // list of chip widgets
                  Chip(
                    label: Text('Healthy',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Vegan',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Carrots',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Greens',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Wheat',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Mint',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Lemongrasstree',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
