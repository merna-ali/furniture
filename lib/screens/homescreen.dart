import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:furniture/screens/bottom_navigation/bag.dart';
import 'package:furniture/screens/bottom_navigation/fav.dart';
import 'package:furniture/screens/bottom_navigation/home.dart';
import 'package:furniture/screens/bottom_navigation/more.dart';
import 'package:furniture/screens/bottom_navigation/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int Index = 0;
  final screens = [
    Fav(),
    Bag(),
    Home(),
    Profile(),
    More(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBody: true,
        body: screens[Index],
        bottomNavigationBar: CurvedNavigationBar(
          index: Index,
          color: Colors.blueGrey,
          backgroundColor: null,
          height: 60,
          animationDuration: Duration(milliseconds: 300),
          items: [
            Icon(Icons.favorite, size: 30, color: Colors.white),
            Icon(Icons.shopping_bag, size: 30, color: Colors.white),
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(Icons.person_rounded, size: 30, color: Colors.white),
            Icon(Icons.read_more_outlined, size: 30, color: Colors.white),
          ],
          onTap: (Index) => setState(() => this.Index = Index),
        ),
      ),
    );
  }
}
