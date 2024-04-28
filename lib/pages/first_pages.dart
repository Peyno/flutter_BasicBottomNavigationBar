// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/home_page.dart';
import 'package:flutter_app2/pages/profile_page.dart';
import 'package:flutter_app2/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0; 

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index; 
    });
  }

  List _pages = [
    //homepage
    HomePage(), 
    //profilepage
    ProfilePage(), 
    // settingspages
    SettingsPage(), 
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',  
          ),
          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',  
          ),
          // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',  
          ),
        ],
      ),
      
    );
  }
}