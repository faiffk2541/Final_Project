import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:newlaundry/userpage/menu/menuservice.dart';

class MenuDetailPage extends StatefulWidget {
  @override
  MenuDetailState createState() => MenuDetailState();
}

class MenuDetailState extends State<MenuDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: [
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
            margin: EdgeInsets.only(top: 15, right: 10, left: 10, bottom: 25),
            child: Center(
              child: Container(
                height: 250,
                width: 350,
                //color: Colors.white,
                child: Center(
                  child: Image.asset('assets/shop1.png'),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
            height: MediaQuery.of(context).size.height - 375,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Column(
              children: [
                shopLocation(name: "พิกัด"),
                SizedBox(height: 10),
                Row(
                  children: [
                    shopName(name: "ร้านซักรีด"),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    showtime(name: "time"),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    shopDetail(name: "ที่อยู่ร้าน"),
                  ],
                ),
                SizedBox(height: 150),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Container(
                          width: 200,
                          height: 50,
                          child: RaisedButton(
                            elevation: 0,
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              'บริการของร้าน',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Prompt',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MenuServicePage()),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Row shopLocation({String name}) {
  return Row(
    children: [
      Icon(
        Icons.location_on,
        color: Colors.grey,
      ),
      SizedBox(width: 10, height: 10),
      Text(
        'location',
        style: TextStyle(
            height: 1.5,
            color: Colors.black,
            fontFamily: 'Prompt',
            fontSize: 16,
            fontWeight: FontWeight.w300),
      )
    ],
  );
}

Expanded shopName({String name}) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ร้านซักผ้า',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Prompt',
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SmoothStarRating(
              color: Colors.yellow[700],
              rating: 4,
              borderColor: Colors.yellow[700],
              size: 20,
            ),
            SizedBox(height: 10, width: 15),
            Text(
              '(20 รีวิว)',
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Prompt',
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
      ],
    ),
  );
}

Expanded showtime({String name}) {
  return Expanded(
    child: Row(
      children: [
        Icon(Icons.access_time),
        SizedBox(height: 10, width: 10),
        Flexible(
          child: Text(
            '8:00 - 18:00 น.',
            overflow: TextOverflow.visible,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Prompt',
                fontSize: 16,
                fontWeight: FontWeight.w300),
          ),
        ),
      ],
    ),
  );
}

Expanded shopDetail({String name}) {
  return Expanded(
    child: Row(
      children: [
        Icon(Icons.home),
        SizedBox(height: 10, width: 10),
        Flexible(
          child: Text(
            '104 ซอย ประชาอุทิศ 45 ถนนประชาอุทิศ แขวงบางมด เขตทุ่งครุ กรุงเทพมหานคร 10140',
            overflow: TextOverflow.visible,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Prompt',
                fontSize: 16,
                fontWeight: FontWeight.w300),
          ),
        ),
      ],
    ),
  );
}

// Expanded selectbutton({String name}) {
//   return Expanded(
//     child: Container(
//       child: Center(
//         child: Container(
//           width: 200,
//           height: 50,
//           child: RaisedButton(
//             elevation: 0,
//             color: Colors.redAccent[100],
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//             child: Text(
//               'เลือกบริการ',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontFamily: 'Prompt',
//                   fontWeight: FontWeight.w300,
//                   fontSize: 18),
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MenuServicePage()),
//               );
//             },
//           ),
//         ),
//       ),
//     ),
//   );
// }
