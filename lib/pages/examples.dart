import 'package:bolsa_flutter/pages/request_service_flow.dart';
import 'package:bolsa_flutter/widgets/button_page.dart';
import 'package:bolsa_flutter/widgets/column_page.dart';
import 'package:bolsa_flutter/widgets/drawer.dart';
import 'package:bolsa_flutter/widgets/list_page.dart';
import 'package:bolsa_flutter/widgets/row_page.dart';
import 'package:flutter/material.dart';

class Examples extends StatelessWidget {
  Examples({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final PageController controller = PageController();
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.menu),
          onTap: ()=> _key.currentState?.openDrawer()
          ,
        ),
      ),
      drawer: CustomDrawer(pageController: controller),
      body: PageView(
        controller: controller,
        children: [
          const RowExample(),
          const ColumnExample(),
          const CustomCardButton(),
          ListPage(),
          RequestServiceFlow(),
          
        ],
      ),
    );
  }
}