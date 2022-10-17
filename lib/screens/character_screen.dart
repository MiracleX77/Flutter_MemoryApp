import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/list_memory.dart';
import 'package:flutter_application_1/widgets/image_dialog.dart';
import "../widgets/widgets.dart";
import 'package:flutter_application_1/palatte.dart';

class character_screen extends StatefulWidget {
  List data;
  character_screen(this.data);
  @override
  State<StatefulWidget> createState() {
    return character_screenState();
  }
}

// ignore: camel_case_types
class character_screenState extends State<character_screen> {
  int good_count = 0;
  int bad_count = 0;
  List list_good_img = [
    'assets/images/good1.png',
    'assets/images/good2.png',
    'assets/images/good3.png'
  ];
  List list_bad_img = [
    'assets/images/bad1.png',
    'assets/images/bad2.png',
    'assets/images/bad3.png'
  ];
  void _timer() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        Navigator.pop(context);
        timer.cancel();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      images_background(widget.data[3]),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(children: [
              Container(
                  child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 90,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/mes1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 22,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                        width: 130,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffFFF1B7),
                                        ),
                                        child: TextButton(
                                            onPressed: () async {
                                              String? val = await showDialog<
                                                      String>(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return add_memory(
                                                        widget.data);
                                                  }).then((value) {
                                                if (value == 'good') {
                                                  if (good_count < 3) {
                                                    good_count++;
                                                  } else {
                                                    good_count = 1;
                                                  }
                                                  showDialog(
                                                      barrierColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      builder: (context) =>
                                                          image_dialog(
                                                              list_good_img[
                                                                  good_count -
                                                                      1]));
                                                  _timer();
                                                } else {
                                                  if (bad_count < 3) {
                                                    bad_count++;
                                                  } else {
                                                    bad_count = 1;
                                                  }
                                                  showDialog(
                                                      barrierColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      builder: (context) =>
                                                          image_dialog(
                                                              list_bad_img[
                                                                  bad_count -
                                                                      1]));
                                                  _timer();
                                                }
                                              });
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 1.5),
                                              child: Text(
                                                "Add Memory",
                                                style: heed5,
                                              ),
                                            ))),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      child: Row(
                    children: [
                      Container(
                          width: 200,
                          child: IconButton(
                              alignment: FractionalOffset.topCenter,
                              padding: EdgeInsets.all(0),
                              icon: Image.asset('assets/images/list.png'),
                              iconSize: 100,
                              onPressed: (() {
                                print(widget.data);
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return list_memory(widget.data);
                                }));
                              }))),
                    ],
                  )),
                  Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.data[2]),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    width: 411,
                    height: 93,
                    decoration: BoxDecoration(color: const Color(0xffFFF1B7)),
                    child: Center(
                        child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/fw1.png'))),
                    )),
                  )
                ],
              )),
            ]),
          ))
    ]);
  }
}
