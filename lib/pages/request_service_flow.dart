import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/home_page_one.dart';
import '../widgets/home_page_three.dart';
import '../widgets/home_page_two.dart';

class RequestServiceFlow extends StatefulWidget {
  @override
  _RequestServiceFlowState createState() => _RequestServiceFlowState();
}

class _RequestServiceFlowState extends State<RequestServiceFlow> {
  int current = 0;

  void nextPage() {
    setState(() {
      current += 1;
    });
  }

  void prevPage() {
    setState(() {
      current -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomePageOne(nextPage: nextPage, prevPage: prevPage),
      HomePageTwo(nextPage: (){}, prevPage: prevPage),
    ];

    return Scaffold(
      backgroundColor: current == 0 ? Colors.blue : Colors.white,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: pages[current],
      ),
    );
  }


  Scaffold get ScaffoldPageview => Scaffold(
      backgroundColor: current == 0 ? Colors.blue : Colors.white,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: Center(),
      ),
    );
}


