import 'package:flutter/material.dart';

class image_dialog extends StatelessWidget {
  final String image;
  image_dialog(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(children: [
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            SizedBox(
              width: 200,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image))),
            )
          ],
        ),
      ]),
    );
  }
}
