import 'package:flutter/material.dart';

class images_icon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage('assets/images/arrow.png'),
      color: Colors.blue,
      size: 110,
    );
  }
}
