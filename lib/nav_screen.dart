import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_delivery/screen_1.dart';
import 'package:free_delivery/screen_2.dart';

class Navc_Screen extends StatefulWidget {
  const Navc_Screen({Key? key}) : super(key: key);

  @override
  State<Navc_Screen> createState() => _Navc_ScreenState();
}

class _Navc_ScreenState extends State<Navc_Screen> {
  int selected = 0;
  List screens = [
    Screen_1(),
    Screen_2(),
    Center(child: Text("menu")),
    Center(child: Text("favourite")),
    Center(child: Text("profile")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selected],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          currentIndex: selected,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Icon(Icons.home_outlined),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Icon(Icons.search),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Icon(Icons.menu),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Icon(Icons.favorite_outline),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(3),
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile_man.webp'),
                          fit: BoxFit.cover),
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
