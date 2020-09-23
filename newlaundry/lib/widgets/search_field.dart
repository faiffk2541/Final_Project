import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 15, right: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20)),
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              icon: Icon(Icons.search, size: 30, color: Colors.grey),
              hintText: 'Search',
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Prompt',
                  fontSize: 18,
                  fontWeight: FontWeight.w300)),
        ),
      ),
    );
  }
}
