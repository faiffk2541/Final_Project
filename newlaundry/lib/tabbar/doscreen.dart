import 'package:flutter/material.dart';

class DoScreen extends StatefulWidget {
  @override
  DoScreenState createState() => DoScreenState();
}

class DoScreenState extends State<DoScreen> {
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
 