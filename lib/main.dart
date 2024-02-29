import 'package:flutter/material.dart';
import 'package:practice/splash.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.routName,
      routes: {
        Splash.routName:(context) => Splash(),
        Home.routName:(context) => Home(),
      },

    );
  }
}



