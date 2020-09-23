import 'package:flutter/material.dart';
import 'package:newlaundry/laundrypage/historylaundry.dart';
import 'package:newlaundry/laundrypage/informationlaundry.dart';
import 'package:newlaundry/laundrypage/servicelaundry.dart';
import 'package:newlaundry/laundrypage/todolistlaundry.dart';

class ProfileLaundry extends StatefulWidget {
  @override
  ProfileLaundryState createState() => ProfileLaundryState();
}

class ProfileLaundryState extends State<ProfileLaundry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30, left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 120,
                  height: 40,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Center(
                      child: Text(
                        'ออก',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontFamily: 'Prompt',
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100, left: 10, right: 10),
            width: double.maxFinite,
            child: InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformationLaundry()),
                ),
              },
              child: Card(
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.blue,
                        size: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                      ),
                      Text(
                        "ข้อมูลร้าน",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Prompt',
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 200),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: double.maxFinite,
            child: InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ServiceLaundry()),
                ),
              },
              child: Card(
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.shopping_basket,
                        color: Colors.blue,
                        size: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                      ),
                      Text(
                        "บริการของร้าน",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Prompt',
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 165),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: double.maxFinite,
            child: InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodolistLaundry()),
                ),
              },
              child: Card(
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.menu,
                        color: Colors.blue,
                        size: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                      ),
                      Text(
                        "To do list",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Prompt',
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 190),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: double.maxFinite,
            child: InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryLaundry()),
                ),
              },
              child: Card(
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.history,
                        color: Colors.blue,
                        size: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                      ),
                      Text(
                        "ประวัติลูกค้า",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Prompt',
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 180),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
