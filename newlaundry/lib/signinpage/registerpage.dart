import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:newlaundry/navigationbar.dart';

class RegisterPage extends StatefulWidget {
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  String nameString, emailString, passwordString;

  Future<void> registerThread() async {
    await Firebase.initializeApp();
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth
        .createUserWithEmailAndPassword(
            email: emailString, password: passwordString)
        .then((response) {
      print('Register Success for Email = $emailString');
      //setupDisplayName();
    }).catchError((response) {
      String title = response.code;
      String message = response.message;
      print('title = $title, message = $message');
    });
  }

  // Future<void> setupDisplayName() async {
  //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //   await firebaseAuth.currentUser().then((response) {

  //     UserUpdateInfo userUpdateInfo =  UserUpdateInfo();
  //     userUpdateInfo.displayName = nameString;
  //     response.updateProfile(userUpdateInfo);
  //     MaterialPageRoute materialPageRoute =
  //       MaterialPageRoute(builder: (BuildContext context) => NavigationBarPage());
  //     Navigator.of(context).pushAndRemoveUntil(
  //       materialPageRoute, (Route<dynamic>) => false);
  //   });
  //  }

  //SingleChildScrollView
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
            child: Center(
              child: Image.asset(
                'assets/pin.png',
                width: 40,
                height: 40,
              ),
            ),
          ),
          SizedBox(height: 50),
          Container(
            child: Center(
              child: Text(
                'LAUNDRY',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontFamily: 'Prompt',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 330,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      //color: Colors.white
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        hintText: "ชื่อสมาชิก",
                        icon: Icon(
                          Icons.person,
                          color: Colors.grey[100],
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Prompt',
                        fontSize: 16,
                      ),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please Fill Your Name is the Black';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (String value) {
                        nameString = value.trim();
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 330,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      //color: Colors.white
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        hintText: "อีเมล์",
                        icon: Icon(
                          Icons.email,
                          color: Colors.grey[100],
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Prompt',
                        fontSize: 16,
                      ),
                      validator: (String value) {
                        if (!((value.contains('@')) && (value.contains('.')))) {
                          return 'Please type Email ......';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (String value) {
                        emailString = value.trim();
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 330,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      autocorrect: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        hintText: "รหัสผ่าน",
                        icon: Icon(
                          Icons.lock,
                          color: Colors.grey[100],
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Prompt',
                        fontSize: 16,
                      ),
                      validator: (String value) {
                        if (value.length < 6) {
                          return 'Password More 6 Charactor';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (String value) {
                        passwordString = value.trim();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 70),
          Center(
            child: Container(
              width: 250,
              child: RaisedButton(
                onPressed: () {
                  print('You Click Upload');
                  if (formKey.currentState.validate()) {
                    formKey.currentState.save();
                    print(
                        'name = $nameString, email =$emailString, password = $passwordString');
                    registerThread(); //ถ้าเมื่อไรที่ได้ค่า name email pass ให้ไปทำงานที่  registerThread()
                  }
                },
                padding: EdgeInsets.all(10),
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'สมัครสมาชิก',
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontFamily: 'Prompt',
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
