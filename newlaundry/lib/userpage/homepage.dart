import 'package:flutter/material.dart';
import 'package:newlaundry/widgets/menuempty.dart';
import 'package:newlaundry/widgets/menupage.dart';
import 'package:newlaundry/widgets/search_field.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          SearchField(),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: MenuPage(),
              ),
              Expanded(
                child: MenuEmpty(),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MenuEmpty(),
              ),
              Expanded(
                child: MenuEmpty(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
