/// convex_bottom_bar: ^3.2.0

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class SecondBottomBar extends StatefulWidget {
  const SecondBottomBar({super.key});

  @override
  State<SecondBottomBar> createState() => _SecondBottomBarState();
}

class _SecondBottomBarState extends State<SecondBottomBar> {
  int currentIndex = 0;
  List<IconData> iconList = [
    Icons.home,
    Icons.settings,
    Icons.account_circle,
    Icons.access_alarm_rounded,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second bottom bar'),
      ),
      body: Container(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //params
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: AnimatedBottomNavigationBar(
      //   icons: iconList,
      //   activeIndex: currentIndex,
      //
      //   gapLocation: GapLocation.center,
      //   notchSmoothness: NotchSmoothness.verySmoothEdge,
      //   leftCornerRadius: 32,
      //   rightCornerRadius: 32,
      //   onTap: (index) => setState(() => currentIndex = index),
      //   //other params
      // ),

      floatingActionButton: FloatingActionButton(
        //params
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          activeIndex: currentIndex,
          gapLocation: GapLocation.center,
          // notchSmoothness: NotchSmoothness.verySmoothEdge,
          // notchSmoothness: NotchSmoothness.sharpEdge,
          // notchSmoothness: NotchSmoothness.softEdge,
          notchSmoothness: NotchSmoothness.defaultEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => currentIndex = index),
          //other params
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            return Icon(
              iconList[index],
              size: 24,
              color: isActive ? Colors.blue : Colors.grey,
            );
          }),
    );
  }
}
