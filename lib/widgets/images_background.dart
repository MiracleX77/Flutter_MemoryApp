import 'package:flutter/material.dart';

class images_background extends StatelessWidget {
  String bg = "";
  images_background(this.bg);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
    );
  }
}
