// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app2/pages/first_pages.dart';
import 'package:flutter_app2/pages/home_page.dart';
import 'package:flutter_app2/pages/settings_page.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: { 
        '/firstpage' :(context) => FirstPage(), 
        '/homepage' :(context) => HomePage(), 
        '/settingspage' : (context) => SettingsPage(), 
      },
    );
  }
}