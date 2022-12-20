// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:notes/views/Search_view.dart';
import 'package:notes/views/home_view.dart';
import 'package:notes/views/location_view.dart';
import 'package:notes/views/user_view.dart';

class TravelView extends StatefulWidget {
  @override
  _TravelViewState createState() => _TravelViewState();
}

class _TravelViewState extends State<TravelView> {
  int currentIndex = 0;
  final screens = [
    const HomeView(),
    const SearchView(),
    const LocationView(),
    const UserView(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.blue,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Location',
              backgroundColor: Colors.blue,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              label: 'User',
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      );
}
