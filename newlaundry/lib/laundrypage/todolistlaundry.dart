import 'package:flutter/material.dart';
import 'package:newlaundry/laundrypage/todolist/confirmation.dart';
import 'package:newlaundry/laundrypage/todolist/receiveproduct.dart';
import 'package:newlaundry/laundrypage/todolist/todo.dart';

class TodolistLaundry extends StatefulWidget {
  @override
  TodolistLaundryLaundryState createState() => TodolistLaundryLaundryState();
}

class TodolistLaundryLaundryState extends State<TodolistLaundry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: double.maxFinite,
            child: InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Confirmation()),
                ),
              },
              child: Card(
                child: Container(
                  height: 130,
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "ยืนยันออเดอร์",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Prompt',
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: Image.asset(
                          'assets/sheet 1.png',
                          width: 70,
                          height: 70,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: double.maxFinite,
            child: InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Todo()),
                ),
              },
              child: Card(
                child: Container(
                  height: 130,
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "รายการที่ต้องทำ",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Prompt',
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 110),
                        child: Image.asset(
                          'assets/sheet 2.png',
                          width: 70,
                          height: 70,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: double.maxFinite,
            child: InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReceiveProduct()),
                ),
              },
              child: Card(
                child: Container(
                  height: 130,
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "รับสินค้า",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Prompt',
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 170),
                        child: Image.asset(
                          'assets/sheet 3.png',
                          width: 70,
                          height: 70,
                        ),
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
