import 'package:flutter/material.dart';
import 'package:flutter_application_1/palatte.dart';

class box_of_memory extends StatelessWidget {
  final String child;
  const box_of_memory({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 160,
          child: Column(
            children: [
              Container(
                  height: 180,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF1B7),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 5.0, color: Colors.yellow),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      child,
                      style: heed7,
                    ),
                  )),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}
