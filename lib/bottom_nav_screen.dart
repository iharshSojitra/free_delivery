// maulik sir

import 'package:flutter/material.dart';
import 'package:free_delivery/screen_1.dart';
import 'package:free_delivery/screen_2.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int pageSelected = 0;

  List screens = [
    Screen_1(),
    Screen_2(),
    Center(child: Text("Menu")),
    Center(child: Text("Favourite")),
    Center(child: Text("Profile")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[pageSelected],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          currentIndex: pageSelected,
          onTap: (value) {
            setState(() {
              pageSelected = value;
            });
          },
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Icon(Icons.home_outlined),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Icon(Icons.search),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Icon(Icons.menu_open),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Icon(Icons.favorite_outline),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                label: ""),
          ],
        ),
      ),
    );
  }
}
