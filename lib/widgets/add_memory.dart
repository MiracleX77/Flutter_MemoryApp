import 'package:flutter/material.dart';
import 'package:flutter_application_1/palatte.dart';
import 'package:flutter_application_1/widgets/bad_add_memory.dart';
import 'package:flutter_application_1/widgets/good_add_memory.dart';

class add_memory extends StatelessWidget {
  List data;
  add_memory(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          child: Center(
        child: Column(children: [
          SizedBox(
            height: 270,
          ),
          Container(
            width: 360,
            height: 170,
            decoration: BoxDecoration(
              color: const Color(0xffFFF1B7),
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(width: 10.0, color: Colors.yellow),
            ),
            child: Column(children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Good or Bad",
                style: heed2,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow[300],
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(width: 5.0, color: Colors.yellow)),
                      child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return good_add_memory(data);
                                });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Text(
                              "Good Memory",
                              style: heed4,
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow[300],
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(width: 5.0, color: Colors.yellow)),
                      child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return bad_add_memory(data);
                                });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Text(
                              "Bad Memory",
                              style: heed4,
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ]),
      )),
    );
  }
}
