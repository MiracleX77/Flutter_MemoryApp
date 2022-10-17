import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/se_character_girl.dart';
import 'package:flutter_application_1/screens/se_chatacter_men.dart';
import 'package:flutter_application_1/screens/welcome-page.dart';
import "../widgets/widgets.dart";
import 'package:flutter_application_1/palatte.dart';

// ignore: camel_case_types
class two_screens extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return two_screensstate();
  }
}

class two_screensstate extends State<two_screens> {
  bool value1 = false;
  bool value2 = false;
  Color _color1 = Colors.yellow;
  Color _color2 = Colors.yellow;
  List data = [];
  String name_character = "";
  String gender_character = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        images_background('assets/images/bg1.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Center(
              child: Column(children: [
                SizedBox(
                  height: 70,
                ),
                //สสร้างข้อความเเสดงผล
                Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: const Color(0xffffcd81),
                    borderRadius: BorderRadius.circular(36.0),
                    border: Border.all(
                        width: 5.0,
                        color: const Color.fromARGB(255, 253, 184, 55)),
                  ),
                  width: 350,
                  height: 150,
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Name Character",
                      style: heed2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //ส่วนให้ใส่ชื่อตัวละคร
                    Container(
                      width: size.width * 0.6,
                      height: 50,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xffFFF1B7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          name_character = value;
                        },
                        style: heed4,
                        decoration: InputDecoration(
                          hintStyle: heed3,
                          hintText: "Input name",
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                 //ส่วนเลือกเพศ
                Container(
                    width: 350,
                    height: 300,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: const Color(0xffffcd81),
                      borderRadius: BorderRadius.circular(36.0),
                      border: Border.all(
                          width: 5.0, color: Color.fromARGB(255, 253, 184, 55)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Select Gender",
                          style: heed2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Center(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 17,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/gender_g.png'),
                                    ),
                                    color: const Color(0xffFFF1B7),
                                    borderRadius: BorderRadius.circular(16.0),
                                    border:
                                        Border.all(width: 10.0, color: _color1),
                                  ),
                                  width: 145,
                                  height: 180,
                                  child: Checkbox(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.padded,
                                      value: value1,
                                      activeColor: Colors.green,
                                      shape: CircleBorder(),
                                      splashRadius: 30,
                                      onChanged: (value1) => setState(() {
                                            this.value1 = value1!;
                                            gender_character = "girl";
                                            value2 = false;
                                            _color2 = Colors.yellow;
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
                                        image: AssetImage(
                                            'assets/images/gender_m.png')),
                                    color: const Color(0xffFFF1B7),
                                    borderRadius: BorderRadius.circular(16.0),
                                    border:
                                        Border.all(width: 10.0, color: _color2),
                                  ),
                                  width: 145,
                                  height: 180,
                                  child: Checkbox(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.padded,
                                      value: value2,
                                      activeColor: Colors.green,
                                      shape: CircleBorder(),
                                      splashRadius: 30,
                                      onChanged: (value2) => setState(() {
                                            this.value2 = value2!;
                                            gender_character = "men";
                                            value1 = false;
                                            _color1 = Colors.yellow;
                                            if (value2 == true) {
                                              _color2 = Colors.green;
                                            } else {
                                              _color2 = Colors.yellow;
                                            }
                                          })),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10,
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
                            if (name_character != "") {
                              data.add(name_character);
                              data.add(gender_character);

                              if (gender_character == "girl") {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return se_character_girl(data);
                                }));
                              } else if (gender_character == "men") {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return se_character_men(data);
                                }));
                              }
                            }
                          })),
                    )
                  ]),
                )),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
