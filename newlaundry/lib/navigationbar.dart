// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'userpage/historypage.dart';
import 'userpage/homepage.dart';
import 'userpage/notificationpage.dart';
import 'userpage/profilepage.dart';

class NavigationBarPage extends StatefulWidget {
  @override
  NavigationBarPageState createState() => NavigationBarPageState();
}

class NavigationBarPageState extends State<NavigationBarPage> {
  int _currentIndex = 0;

  // final _pageActive = [
  //   HomePage(),
  //   HistoryPage(),
  //   NotificationPage(),
  //   ProfilePage(),
  // ];

  @override
  Widget build(BuildContext context) {
    final _pageActive = [
      HomePage(),
      HistoryPage(),
      NotificationPage(),
      ProfilePage(),
    ];
    return Scaffold(
      body: _pageActive[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        height: 60,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.history, size: 30, color: Colors.white),
          Icon(Icons.notifications_active, size: 30, color: Colors.white),
          Icon(Icons.perm_identity, size: 30, color: Colors.white),
        ],
        color: Colors.blue,
        backgroundColor: Colors.blue[100],
        buttonBackgroundColor: Colors.blue,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
      ),
    );
  }
}
