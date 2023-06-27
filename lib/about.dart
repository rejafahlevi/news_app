import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:projectuas/home.dart';

import 'detail.dart';

class About extends StatelessWidget {
  const About({super.key});
  static String routeName = 'ABOUT';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromRGBO(254, 202, 61, 1)),
          onPressed: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) {
              return Home();
            }),
          ),
        ),
        backgroundColor: Color.fromRGBO(2, 12, 83, 1),
        centerTitle: true,
        title: Image.asset(
          "assets/images/logo.jpg",
          width: 100.0,
          height: 80.0,
        ),
      ),
      body: Stack(
        children: [
          Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  width: 600,
                  margin: EdgeInsets.only(top: 60),
                  child: Text(
                    'About',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontFamily: 'Inter',
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  margin: EdgeInsets.only(
                      top: 150, left: 30, right: 30, bottom: 50),
                  height: 330,
                  width: 350,
                  color: Color.fromRGBO(2, 12, 83, 1),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
                  child: Text(
                    'Aplikasi ini merupakan aplikasi yang menampilkan berita terbaru. User dapat mengetahui update berita baik dari dalam negeri maupun dari luar negeri. Aplikasi ini dibuat dalam rangka projek akhir semester mata kuliah PBO.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'Inter',
                      letterSpacing: 1,
                      height: 2,
                    ),
                  ),
                  // SizedBox(
                  //   width: 20,
                  //       )
                ),
              ),
            ],
          ),
        ],

//  BottomNavigationBarItem(
//             leading: Icons.add,
//             label: Text('Copyright@2022 Regita Rahma Azazi Salsabla Ananda Al Madani M Rifki Reza Fahlevi',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 10,
//                   color: Colors.black,
//                   fontFamily: 'Inter',
//                   letterSpacing: 1,
//                   height: 1,
//                 )),
//           );
      ),
      backgroundColor: Color.fromRGBO(254, 202, 61, 1),
    );
//   BottomNavigationBar: BottomNavigationBar(
//     items: <BottomNavigationBarItem> [
//       BottomNavigationBarItem(
//         activeIcon: Icon(
//           Icons.store,
//           color: Colors.black,
//         ),
//         icon: Icon(
//           Icons.store,
//           color: Colors.grey,
//         ),
//          label: Text(
//           "Copyright@2022 Regita Rahma Azazi Salsabla Ananda Al Madani M Rifki Reza Fahlevi",
//           style: TextStyle(
// //                   fontSize: 10,
// //                   color: Colors.black,
// //                   fontFamily: 'Inter',
// //                   letterSpacing: 1,
// //                   height: 1,
//           ),
//         ),
//       ),],
//     );
  }
}
