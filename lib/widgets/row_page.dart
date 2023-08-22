import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: const Wrap(
        children: [
          Chip(label: Text("Codes"),backgroundColor: Colors.amber,),
          Padding(padding: EdgeInsets.all(8)),
          Chip(label: Text("SGestMan"),backgroundColor: Color.fromARGB(121, 125, 65, 86)),
          Padding(padding: EdgeInsets.all(8)),
          Chip(label: Text("Flutter"),backgroundColor: Colors.blue),
          Padding(padding: EdgeInsets.all(8)),
          Chip(label: Text("Android"),backgroundColor: Colors.orange),
          Padding(padding: EdgeInsets.all(8),),
          Chip(label: Text("Ios"),backgroundColor: Colors.red),
          Padding(padding: EdgeInsets.all(8)),
          Chip(label: Text("Solicitudes"),backgroundColor: Color.fromARGB(255, 61, 255, 7)),
          Padding(padding: EdgeInsets.all(8)),
          Chip(label: Text("Modulos"),backgroundColor: Colors.amberAccent),
        ],
      ),
    );
  }
}