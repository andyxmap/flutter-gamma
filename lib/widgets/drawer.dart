// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  PageController pageController;

  CustomDrawer({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int selectedIndex = 0;
  final List<Map<String,dynamic>> routes = [
         {
          'name': "Row",
          'route': "/row",
          'icon': const Icon(Icons.table_rows_outlined)
         },
          {
          'name': "Column",
          'route': "/col",
          'icon': const Icon(Icons.table_rows_outlined)
         },
          {
          'name': "Buttons",
          'route': "/button",
          'icon': const Icon(Icons.table_rows_outlined)
         },
          {
          'name': "List and Grid",
          'route': "/listgrid",
          'icon': const Icon(Icons.table_rows_outlined)
         },
          {
          'name': "Solicitudes",
          'route': "/listgrid",
          'icon': const Icon(Icons.table_rows_outlined)
         },
          {
          'name': "Users Api",
          'route': "/listgrid",
          'icon': const Icon(Icons.account_balance)
         },
  ];
   
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: (index){
           setState(() {
                    selectedIndex = index;
                    widget.pageController.animateToPage(
                      index,
                      duration: const Duration(seconds: 1), curve: Curves.linear);
            });
      },
      selectedIndex: selectedIndex,
      children: [
             const SizedBox(height: 50),
             ...routes.map((e) => NavigationDrawerDestination(icon: e['icon'], label: Text(e['name']))).toList()
      ]
    
    );
  }
}