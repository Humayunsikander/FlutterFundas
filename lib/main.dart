import 'package:flutter/material.dart';
import 'package:untitled/pages/first_page.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["Humayun", "Sikander", "Shahjhan", "Hisham"];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.deepPurple[200],
          body: FirstPage(),
      ),
      routes: {
        '/firstpage' : (context) => FirstPage(),
        '/homepage' : (context) => HomePage(),
        '/settingspage' : (context) => SettingsPage()
      },
    );
  }
}
