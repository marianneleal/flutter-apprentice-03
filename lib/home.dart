// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'card1.dart';


// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 7
  int _selectedIndex = 0; // state being tracked by _HomeState.
                          // keeps track of which tab is currently selected, _ davor = private

  // 8
  static List<Widget> pages = <Widget>[ //defines widgets that will display on each tab
    const Card1(),
    // TODO: Replace with Card2
    Container(color: Colors.green),
    // TODO: Replace with Card3
    Container(color: Colors.blue)
  ];

  // 9 handles tapped tab bar items. sets index of item that the user pressed,
  void _onItemTapped(int index) {
    setState(() { // notifies the framework that the state of this object has changed, then rebuilds it internally
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fooderlich',
          // 2
          style: Theme.of(context).textTheme.headline6,
        // instead of previously: theme.textTheme.headline6. Theme.of(context)
        // returns nearest Theme in Widget tree.
        ),
      ),
      // As the framework rebuilds the widgets, it displays the container widget for the selected tab bar item
      body: pages[_selectedIndex],
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor:
          Theme.of(context).textSelectionTheme.selectionColor, //color when item is tapped
        // 10 shows user which tab bar item they currently have selected
        currentIndex: _selectedIndex, //currentIndex tells bottom navigation bar which tab bar item to highlight
        // 11
        onTap: _onItemTapped, // handler which updates the state with the correct index (changes color)

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
