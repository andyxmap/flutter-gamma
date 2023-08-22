import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
                color: Colors.white,
      ),
      width: size.width,
      height: size.height,
      child: Column(children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 100,
            height: 100,
             decoration: BoxDecoration(
                color: const Color.fromARGB(255, 116, 64, 64),
                borderRadius: BorderRadius.all(Radius.circular(10))
          )),
          Container(
            margin: EdgeInsets.all(10),
            width: 100,
            height: 100,
             decoration: BoxDecoration(
                color: Color.fromARGB(255, 43, 157, 30),
                borderRadius: BorderRadius.all(Radius.circular(10))
          )),
          Container(
            margin: EdgeInsets.all(10),
            width: 100,
            height: 100,
             decoration: BoxDecoration(
                color: const Color.fromARGB(255, 180, 61, 61),
                borderRadius: BorderRadius.all(Radius.circular(10))
          )),
          Container(
            margin: EdgeInsets.all(10),
            width: 100,
            height: 100,
             decoration: BoxDecoration(
                color: Color.fromARGB(129, 47, 129, 100),
                borderRadius: BorderRadius.all(Radius.circular(10))
          )),
      ]),
    );
  }
}