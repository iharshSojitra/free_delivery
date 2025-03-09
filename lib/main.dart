import 'package:flutter/material.dart';
import 'package:free_delivery/screen_1.dart';
import 'package:free_delivery/screen_2.dart';

import 'bottom_nav_screen.dart';
import 'demo.dart';
import 'nav_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navc_Screen(),
    );
  }
}
