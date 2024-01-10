/// convex_bottom_bar: ^3.2.0

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class FirstBottomBar extends StatelessWidget {
  const FirstBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first bottom bar'),
      ),
      body: Text('jshjsh'),
      bottomNavigationBar: ConvexAppBar.badge(
        {0: '99+', 1: Icons.assistant_photo, 2: Colors.redAccent},
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
      // ConvexAppBar(
      //   // style: TabStyle.flip,
      //   // style: TabStyle.custom,
      //   // style: TabStyle.fixed,
      //   style: TabStyle.reactCircle,
      //   items: [
      //     TabItem(icon: Icons.home, title: 'Home'),
      //     TabItem(icon: Icons.map, title: 'Discovery'),
      //     TabItem(icon: Icons.add, title: 'Add'),
      //     TabItem(icon: Icons.message, title: 'Message'),
      //     TabItem(icon: Icons.people, title: 'Profile'),
      //   ],
      //   initialActiveIndex: 1,
      //   onTap: (int i) => print('click index=$i'),
      // ),
    );
  }
}
