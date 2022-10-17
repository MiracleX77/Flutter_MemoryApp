import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/two_screens.dart';
import 'package:flutter_application_1/widgets/images_background.dart';
import "../widgets/widgets.dart";
import 'package:flutter_application_1/palatte.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        images_background('assets/images/bg1.png'),//เอารูปพื้นหลังมาใส่
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Column(
                children: [
                  //เเสดงข้อความ 
                  Container( 
                    height: 450,
                    child: Center(
                        child: Text(
                      'Welcome',
                      style: heed1,
                    )),
                  ),
                  //สร้่างปุ่มกดให้ไปหน้าถัดไป 
                  Container(
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(16),
                              border:
                                  Border.all(width: 4, color: Colors.black)),
                          width: 150,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return two_screens();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 1.5),
                                child: Text(
                                  "Next",
                                  style: heed2,
                                ),
                              ))),
                    ]),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
