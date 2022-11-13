import 'package:app_trac_nghiem/views/friend/friend_screen.dart';
import 'package:app_trac_nghiem/views/home/news_screen.dart';
import 'package:app_trac_nghiem/views/rank/rank_screen.dart';
import 'package:app_trac_nghiem/views/setting/setting_screen.dart';
import 'package:app_trac_nghiem/views/play/type_questions.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    // home
    const News(),
    // friend
    const Friend(),
    //play
    const TypeQuestions(),
    //  rank
    const Rank(),
    // setting
    const Setting(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, color: Colors.black),
              label: 'Home',
              backgroundColor: Color(0xFF00FFD1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined, color: Colors.black),
              label: 'Friend',
              backgroundColor: Color(0xFF00FFD1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow_outlined, color: Colors.black),
              label: 'Play',
              backgroundColor: Color(0xFF00FFD1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined, color: Colors.black),
              label: 'Rank',
              backgroundColor: Color(0xFF00FFD1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined, color: Colors.black),
              label: 'Setting',
              backgroundColor: Color(0xFF00FFD1)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
