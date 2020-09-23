import 'package:flutter/material.dart';

class MenuEmpty extends StatefulWidget {
  @override
  MenuEmptyState createState() => MenuEmptyState();
}

class MenuEmptyState extends State<MenuEmpty> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: double.maxFinite,
      child: InkWell(
        onTap: () => {},
        child: Card(
          child: Container(
            height: 210,
            width: 0,
          ),
        ),
      ),
    );
  }
}
