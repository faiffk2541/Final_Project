import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountPage extends StatefulWidget {
  @override
  AccountPageState createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  File imageFile, file;
  var imageFiles = [];

  _openGallary(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(ImageSource imageSource) async {
    var picture = await ImagePicker.pickImage(source: imageSource);
    setState(() {
      imageFile = picture;
      this.imageFiles.add(picture);
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'ดำเนินการ',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Prompt',
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text(
                      'รูปภาพ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {
                      _openGallary(context);
                    },
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    child: Text(
                      'ถ่ายภาพ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {
                      _openCamera(ImageSource.camera);
                    },
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    child: Text(
                      'ลบรูปปัจจุบัน',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          );
        });
  }

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
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'บัญชีของฉัน',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontFamily: 'Prompt',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Image.asset(
                        'assets/boy.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                elevation: 0,
                onPressed: () {
                  _showChoiceDialog(context);
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        'เปลี่ยนรูปโปรไฟล์',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Prompt',
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Form(
          //   child: Container(
          //     child: Row(
          //       children: [
          //         Padding(
          //           padding: EdgeInsets.only(left: 30),
          //           child: Text(
          //             'ชื่อ',
          //             style: TextStyle(
          //                 color: Colors.black,
          //                 fontFamily: 'Prompt',
          //                 fontWeight: FontWeight.w400,
          //                 fontSize: 16),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Center(
            child: Form(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 400,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      //color: Colors.white
                    ),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        hintText: "ชื่อ",
                        hintStyle: TextStyle(
                            //color: Colors.black,
                            fontFamily: 'Prompt',
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        //icon: Icon(Icons.people, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 400,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      //color: Colors.white
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: new InputDecoration(
                        hintText: "เบอร์โทร",
                        hintStyle: TextStyle(
                            //color: Colors.black,
                            fontFamily: 'Prompt',
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        //icon: Icon(Icons.people, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 120,
                              height: 50,
                              child: RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(10),
                                color: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  'ยกเลิก',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Prompt',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              width: 120,
                              height: 50,
                              child: RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(10),
                                color: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  'บันทึก',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: 'Prompt',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
