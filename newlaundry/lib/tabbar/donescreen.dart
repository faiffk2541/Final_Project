import 'package:flutter/material.dart';

class DoneScreen extends StatefulWidget {
  @override
  DoneScreenState createState() => DoneScreenState();
}

class DoneScreenState extends State<DoneScreen> {
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