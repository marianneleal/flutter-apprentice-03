// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: Add state variables and functions

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          // 2
          style: Theme.of(context).textTheme.headline6,
        // instead of previously: theme.textTheme.headline6. Theme.of(context)
        // returns nearest Theme in Widget tree.
        ),
      ),
      // TODO: Show selected tab
      body: Center(
          child: Text('Let\'s get cooking 👩‍🍳',
              // 3
              style: Theme.of(context).textTheme.headline1)),
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor:
          Theme.of(context).textSelectionTheme.selectionColor, //color when item is tapped
        // TODO: Set selected tab bar
        // 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),

    );
  }
}
