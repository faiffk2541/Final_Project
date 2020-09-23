import 'package:flutter/material.dart';

class DoingScreen extends StatefulWidget {
  @override
  DoingScreenState createState() => DoingScreenState();
}

class DoingScreenState extends State<DoingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[100],
      ),
    );
  }
}