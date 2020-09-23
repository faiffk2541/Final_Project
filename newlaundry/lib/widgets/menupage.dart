import 'package:flutter/material.dart';
import 'package:newlaundry/userpage/menu/menudetail.dart';

class MenuPage extends StatefulWidget {
  @override
  MenuPageState createState() => MenuPageState();
}

class MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: double.maxFinite,
      child: InkWell(
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MenuDetailPage()),
          ),
        },
        child: Card(
          child: Container(
            height: 210,
            width: 0,
            child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/washing-machine.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        'ร้านซักผ้า',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Prompt',
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/location.png',
                          width: 15,
                          height: 15,
                        ),
                        Text(
                          ' 0.4 km',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Prompt',
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/start.png',
                          width: 15,
                          height: 15,
                        ),
                        Text(
                          ' 4.0 (20 รีวิว)',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Prompt',
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
