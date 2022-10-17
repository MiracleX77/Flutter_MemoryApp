import 'package:flutter/material.dart';

import '../palatte.dart';

class bad_add_memory extends StatelessWidget {
  List data;
  bad_add_memory(this.data);
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Container(
            width: 360,
            height: 400,
            decoration: BoxDecoration(
              color: const Color(0xffFFF1B7),
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(width: 10.0, color: Colors.yellow),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Enter Memory",
                  style: heed2,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                      controller: controller,
                      minLines: 2,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText: 'Enter a Bad Memory Here...',
                        hintStyle: heed3,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      )),
                ),
                ElevatedButton(
                    onPressed: () {
                      String _text = controller.text;
                      List bad = data[5];
                      bad.add(_text);
                      data[5] = bad;
                      Navigator.pop(context);
                      Navigator.pop(context, 'bad');
                    },
                    child: Text(
                      "Add memory",
                      style: heed4,
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }
}
