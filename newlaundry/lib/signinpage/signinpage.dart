import 'package:flutter/material.dart';
// import 'package:newlaundry/navigationbar.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:newlaundry/signinpage/loginpage.dart';
import 'package:newlaundry/signinpage/registerpage.dart';

class SignInPage extends StatefulWidget {
  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  @override
  // void initState() {
  //   super.initState();
  //   checkStatus();
  // }
  //check login logout
  // Future<void> checkStatus() async {
  //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //   FirebaseUser firebaseUser = await firebaseAuth.currentUser();
  //   if (firebaseUser != null) {
  //     MaterialPageRoute materialPageRoute = MaterialPageRoute(
  //         builder: (BuildContext context) => NavigationBarPage());
  //         Navigator.of(context).pushAndRemoveUntil(materialPageRoute, (Route<dynamic>) => false);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: <Widget>[
          SizedBox(height: 150),
          Container(
            child: Center(
              child: Image.asset(
                'assets/pin.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
          SizedBox(height: 50),
          Container(
            child: Center(
              child: Text(
                'LAUNDRY',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontFamily: 'Prompt',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 100),
          Container(
            child: Center(
              child: Container(
                width: 200,
                height: 50,
                child: RaisedButton(
                  elevation: 0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontFamily: 'Prompt',
                        fontWeight: FontWeight.w300,
                        fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: Center(
              child: Container(
                width: 200,
                height: 50,
                child: RaisedButton(
                  elevation: 0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    'สมัครสมาชิก',
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontFamily: 'Prompt',
                        fontWeight: FontWeight.w300,
                        fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
