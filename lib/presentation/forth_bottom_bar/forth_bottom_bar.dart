/// animated_notch_bottom_bar: ^1.0.1

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

class ForthBottomBar extends StatefulWidget {
  const ForthBottomBar({super.key});

  @override
  State<ForthBottomBar> createState() => _ForthBottomBarState();
}

class _ForthBottomBarState extends State<ForthBottomBar> {
  NotchBottomBarController _controller = NotchBottomBarController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forth bottom bar'),
      ),
      body: Container(),
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        // pageController: _pageController,
        onTap: (i) {
          setState(
            () {
              _currentIndex = i;
            },
          );
        },
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Page 1',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.star,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.star,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Page 2',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.settings,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Page 3',
          ),
        ],
        kIconSize: 20.0,
        kBottomRadius: 30,
      ),
    );
  }
}
