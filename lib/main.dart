import 'package:flutter/material.dart';
import 'package:money/page/home_page.dart';
import 'package:money/page/search_page.dart';
import 'package:money/splesh_screen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money On Navkar',
      initialRoute: '/',
      routes: {
        '/': (context) => SpleshScreen(),
        '/home': (context) => HomePage(),
        '/search': (context) => Search(),
      },
    );
  }
}


