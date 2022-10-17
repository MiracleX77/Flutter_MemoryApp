import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/character_screen.dart';
import "../widgets/widgets.dart";
import 'package:flutter_application_1/palatte.dart';

class se_background extends StatefulWidget {
  List data;
  se_background(this.data);
  @override
  State<StatefulWidget> createState() {
    return se_backgroundState();
  }
}

// ignore: camel_case_types
class se_backgroundState extends State<se_background> {
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
  String _background = "";
  List good_memory = [];
  List bad_memory = [];

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
                    "Select Background",
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
                              image: AssetImage('assets/images/bg1.png'),
                              fit: BoxFit.cover),
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
                                  _background = "assets/images/bg1.png";
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
                              image: AssetImage('assets/images/bg2.jpg'),
                              fit: BoxFit.cover),
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
                                  _background = "assets/images/bg2.jpg";
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
                              image: AssetImage('assets/images/bg3.jpg'),
                              fit: BoxFit.cover),
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
                                  _background = "assets/images/bg3.jpg";
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
                              image: AssetImage('assets/images/bg4.jpg'),
                              fit: BoxFit.cover),
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
                                  _background = "assets/images/bg4.jpg";
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
                              image: AssetImage('assets/images/bg5.jpg'),
                              fit: BoxFit.cover),
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
                                  _background = "assets/images/bg5.jpg";
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
                              image: AssetImage('assets/images/bg6.jpg'),
                              fit: BoxFit.cover),
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
                                  _background = "assets/images/bg6.jpg";
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
                          widget.data.add(_background);
                          widget.data.add(good_memory);
                          widget.data.add(bad_memory);
                          List data = widget.data;
                          print(data);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return character_screen(data);
                          }));
                        }),
                      ))
                ]),
              ))
            ]),
          )))
    ]);
  }
}
