import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/se_background.dart';
import 'package:flutter_application_1/widgets/images_background.dart';
import "../widgets/widgets.dart";
import 'package:flutter_application_1/palatte.dart';

class se_character_girl extends StatefulWidget {
  final List data;
  se_character_girl(this.data);
  @override
  State<StatefulWidget> createState() {
    return se_character_girlState();
  }
}

// ignore: camel_case_types
class se_character_girlState extends State<se_character_girl> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  bool value6 = false;
  Color _color1 = Colors.yellow;
  Color _color2 = Colors.yellow;
  Color _color3 = Colors.yellow;
  Color _color4 = Colors.yellow;
  Color _color5 = Colors.yellow;
  Color _color6 = Colors.yellow;
  // ignore: unused_field
  String _character = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      images_background('assets/images/bg1.png'),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Center(
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 520,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color(0xffffcd81),
                  borderRadius: BorderRadius.circular(36.0),
                  border: Border.all(
                      width: 5.0,
                      color: const Color.fromARGB(255, 253, 184, 55)),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Select Character",
                    style: heed2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(children: [
                      SizedBox(
                        width: 17,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/g1.png'),
                          ),
                          color: const Color(0xffFFF1B7),
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(width: 10.0, color: _color1),
                        ),
                        width: 145,
                        height: 130,
                        child: Checkbox(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            value: value1,
                            activeColor: Colors.green,
                            shape: CircleBorder(),
                            splashRadius: 30,
                            onChanged: (value1) => setState(() {
                                  _character = "assets/images/g1.png";
                                  this.value1 = value1!;
                                  value2 = false;
                                  value3 = false;
                                  value4 = false;
                                  value5 = false;
                                  value6 = false;
                                  _color5 = Colors.yellow;
                                  _color2 = Colors.yellow;
                                  _color3 = Colors.yellow;
                                  _color4 = Colors.yellow;
                                  _color6 = Colors.yellow;
                                  if (value1 == true) {
                                    _color1 = Colors.green;
                                  } else {
                                    _color1 = Colors.yellow;
                                  }
                                })),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/g2.png'),
                          ),
                          color: const Color(0xffFFF1B7),
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(width: 10.0, color: _color2),
                        ),
                        width: 145,
                        height: 130,
                        child: Checkbox(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            value: value2,
                            activeColor: Colors.green,
                            shape: CircleBorder(),
                            splashRadius: 30,
                            onChanged: (value2) => setState(() {
                                  _character = "assets/images/g2.png";
                                  this.value2 = value2!;
                                  value1 = false;
                                  value3 = false;
                                  value4 = false;
                                  value5 = false;
                                  value6 = false;
                                  _color5 = Colors.yellow;
                                  _color3 = Colors.yellow;
                                  _color4 = Colors.yellow;
                                  _color6 = Colors.yellow;
                                  _color1 = Colors.yellow;
                                  if (value2 == true) {
                                    _color2 = Colors.green;
                                  } else {
                                    _color2 = Colors.yellow;
                                  }
                                })),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(children: [
                      SizedBox(
                        width: 17,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/g3.png'),
                          ),
                          color: const Color(0xffFFF1B7),
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(width: 10.0, color: _color3),
                        ),
                        width: 145,
                        height: 130,
                        child: Checkbox(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            value: value3,
                            activeColor: Colors.green,
                            shape: CircleBorder(),
                            splashRadius: 30,
                            onChanged: (value3) => setState(() {
                                  _character = "assets/images/g3.png";
                                  this.value3 = value3!;
                                  value2 = false;
                                  value1 = false;
                                  value4 = false;
                                  value5 = false;
                                  value6 = false;
                                  _color5 = Colors.yellow;
                                  _color2 = Colors.yellow;
                                  _color1 = Colors.yellow;
                                  _color4 = Colors.yellow;
                                  _color6 = Colors.yellow;
                                  if (value3 == true) {
                                    _color3 = Colors.green;
                                  } else {
                                    _color3 = Colors.yellow;
                                  }
                                })),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/g4.png'),
                          ),
                          color: const Color(0xffFFF1B7),
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(width: 10.0, color: _color4),
                        ),
                        width: 145,
                        height: 130,
                        child: Checkbox(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            value: value4,
                            activeColor: Colors.green,
                            shape: CircleBorder(),
                            splashRadius: 30,
                            onChanged: (value4) => setState(() {
                                  _character = "assets/images/g4.png";
                                  this.value4 = value4!;
                                  value2 = false;
                                  value3 = false;
                                  value1 = false;
                                  value5 = false;
                                  value6 = false;
                                  _color5 = Colors.yellow;
                                  _color2 = Colors.yellow;
                                  _color3 = Colors.yellow;
                                  _color1 = Colors.yellow;
                                  _color6 = Colors.yellow;
                                  if (value4 == true) {
                                    _color4 = Colors.green;
                                  } else {
                                    _color4 = Colors.yellow;
                                  }
                                })),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(children: [
                      SizedBox(
                        width: 17,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/g5.png'),
                          ),
                          color: const Color(0xffFFF1B7),
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(width: 10.0, color: _color5),
                        ),
                        width: 145,
                        height: 130,
                        child: Checkbox(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            value: value5,
                            activeColor: Colors.green,
                            shape: CircleBorder(),
                            splashRadius: 30,
                            onChanged: (value5) => setState(() {
                                  _character = "assets/images/g5.png";
                                  this.value5 = value5!;
                                  value2 = false;
                                  value3 = false;
                                  value4 = false;
                                  value1 = false;
                                  value6 = false;
                                  _color1 = Colors.yellow;
                                  _color2 = Colors.yellow;
                                  _color3 = Colors.yellow;
                                  _color4 = Colors.yellow;
                                  _color6 = Colors.yellow;
                                  if (value5 == true) {
                                    _color5 = Colors.green;
                                  } else {
                                    _color5 = Colors.yellow;
                                  }
                                })),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/g6.png'),
                            fit: BoxFit.scaleDown,
                          ),
                          color: const Color(0xffFFF1B7),
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(width: 10.0, color: _color6),
                        ),
                        width: 145,
                        height: 130,
                        child: Checkbox(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            value: value6,
                            activeColor: Colors.green,
                            shape: CircleBorder(),
                            splashRadius: 30,
                            onChanged: (value6) => setState(() {
                                  _character = "assets/images/g6.png";
                                  this.value6 = value6!;
                                  value2 = false;
                                  value3 = false;
                                  value4 = false;
                                  value5 = false;
                                  value1 = false;
                                  _color5 = Colors.yellow;
                                  _color2 = Colors.yellow;
                                  _color3 = Colors.yellow;
                                  _color4 = Colors.yellow;
                                  _color1 = Colors.yellow;
                                  if (value6 == true) {
                                    _color6 = Colors.green;
                                  } else {
                                    _color6 = Colors.yellow;
                                  }
                                })),
                      ),
                    ]),
                  ),
                ]),
              ),
              Container(
                  child: Center(
                child: Row(children: [
                  SizedBox(
                    width: 290,
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    child: IconButton(
                        icon: images_icon(),
                        onPressed: (() {
                          widget.data.add(_character);
                          List data = widget.data;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return se_background(data);
                          }));
                        })),
                  )
                ]),
              ))
            ]),
          )))
    ]);
  }
}
