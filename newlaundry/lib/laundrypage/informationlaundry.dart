import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math';
import 'dart:async';
import 'package:path/path.dart' as Path;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

//import 'package:firebase_core/firebase_core.dart';

// import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class InformationLaundry extends StatefulWidget {
  @override
  InformationLaundryState createState() => InformationLaundryState();
}

class InformationLaundryState extends State<InformationLaundry> {
  File imageFile, file;
  String urlPic, name, phone, adress;
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
                      'กล้องถ่ายรูป',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {
                      _openCamera(ImageSource.camera);
                    },
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
              'เพิ่มรายละเอียดร้าน',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontFamily: 'Prompt',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30, width: 30),
          Container(
            // child: PickImage(),
// this part PickImage
            padding: EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Row(
                    children: imageFiles
                        .map(
                          (url) => new InkWell(
                            child: Image.file(url, height: 100, width: 100),
                            onTap: () {
                              var index = imageFiles.indexOf(url);
                              _settingModalBottomSheet(context, index);
                            },
                          ),
                        )
                        .toList()),
                Column(
                  children: [
                    InkWell(
                      child: Image.asset('assets/frame.png',
                          height: 90, width: 90),
                      onTap: () {
                        if (imageFiles.length > 0) {
                          print(imageFiles);
                        } else {
                          _showChoiceDialog(context);
                        }
                      },
                    ),
                  ],
                )
              ],
            ),
          ), // finish PickImage part
// this part input infor store
          SizedBox(height: 30, width: 30),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                TextField(
                  onChanged: (String string) {
                    name = string.trim();
                    print('insert name done');
                  },
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ชื่อร้าน',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Prompt',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.shopping_basket,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30, width: 30),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                TextField(
                  onChanged: (String string) {
                    adress = string.trim();
                  },
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ที่อยู่ร้าน',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Prompt',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30, width: 30),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                TextField(
                  onChanged: (String string) {
                    phone = string.trim();
                  },
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'เบอร์โทร',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Prompt',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
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
                        onPressed: () {
                          //print('!!!! object is done !!!!');
                          uploadPicToStorage();

                          //picimage.currentState.uploadPicToStorage();
                          //uploae();
                        },
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
    );
  }

  void _settingModalBottomSheet(context, index) {
    print(index);
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.remove_red_eye),
                    title: new Text(
                      'ดู',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () => {}),
                new ListTile(
                    leading: new Icon(Icons.remove_circle),
                    title: new Text(
                      'ลบ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Prompt',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    onTap: () {
                      setState(() {
                        imageFiles.removeAt(index);
                        Navigator.of(context).pop();
                        deleteImage(urlPic);
                      });
                    }),
              ],
            ),
          );
        });
  }

  Future<void> uploadPicToStorage() async {
    Random random = Random();
    int i = random.nextInt(100000);

    FirebaseStorage firebaseStorage = FirebaseStorage.instance;
    StorageReference storageReference =
        firebaseStorage.ref().child('PicInformationelaundry/inforlaunry$i.jpg');
    StorageUploadTask storageUploadTask = storageReference.putFile(imageFile);

    urlPic = await (await storageUploadTask.onComplete).ref.getDownloadURL();
    print('urlPic is = $urlPic');
    //insertinformation();
  }

  // Future<void> insertinformation() async {
  //   final databaseReference = Firestore.instance;
  //   //Firestore firestore = Firestore.instance;

  //   Map<String, dynamic> map = Map();
  //   map['Name'] = name;
  //   map['Adress'] = adress;
  //   map['Phone'] = phone;
  //   map['URLpic'] = urlPic;
  //   //await Firebase.initializeApp();
  //   await databaseReference
  //       .collection('InformationLaundry')
  //       .document()
  //       .setData(map)
  //       .then((value) {
  //     print('insert Successfully');
  //   });
  // }

  Future<void> deleteImage(String urlPic) async {
    var fileUrl = Uri.decodeFull(Path.basename(urlPic))
        .replaceAll(new RegExp(r'(\?alt).*'), '');

    final StorageReference firebaseStorageRef =
        FirebaseStorage.instance.ref().child(fileUrl);
    await firebaseStorageRef.delete();
    print('Successfully deleted $urlPic from storage');
  }
}
//}