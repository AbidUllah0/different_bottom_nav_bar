import 'package:different_bottom_nav_bar/presentation/first_bottom_bar/first_bottom_bar.dart';
import 'package:different_bottom_nav_bar/presentation/forth_bottom_bar/forth_bottom_bar.dart';
import 'package:different_bottom_nav_bar/presentation/second_bottom_bar/second_bottom_bar.dart';
import 'package:different_bottom_nav_bar/presentation/third_bottom_bar/third_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Different Bottom Nav Bar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstBottomBar()));
            },
            child: const Text('Go to first Bar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondBottomBar()));
            },
            child: const Text('Go to Second Bar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdBottomBar()));
            },
            child: const Text('Go to Third Bar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ForthBottomBar()));
            },
            child: const Text('Go to Forth Bar'),
          ),
        ],
      ),
    );
  }
}
