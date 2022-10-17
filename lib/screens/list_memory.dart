import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/character_screen.dart';
import '../palatte.dart';
import "../widgets/widgets.dart";

class list_memory extends StatefulWidget {
  List data;
  list_memory(this.data);
  @override
  State<StatefulWidget> createState() {
    return list_memoryState();
  }
}

// ignore: camel_case_types
class list_memoryState extends State<list_memory> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      images_background('assets/images/bg1.png'),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Memory",
              style: heed6,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Good Memory",
                  style: heed2,
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.data[4].length,
                  itemBuilder: ((context, index) {
                    return box_of_memory(
                      child: widget.data[4][index],
                    );
                  })),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Bad Memory",
                  style: heed2,
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.data[5].length,
                  itemBuilder: ((context, index) {
                    return box_of_memory(
                      child: widget.data[5][index],
                    );
                  })),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(width: 5.0, color: Colors.blue)),
              child: TextButton(
                  onPressed: (() {
                    List data = widget.data;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return character_screen(data);
                    }));
                  }),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Text(
                      "Back",
                      style: heed4,
                    ),
                  )),
            ),
          ],
        )),
      )
    ]);
  }
}
