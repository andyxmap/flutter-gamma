import 'package:bolsa_flutter/infraestructure/repository.dart';
import 'package:bolsa_flutter/widgets/builder.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../models/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
Widget build(BuildContext context) {
  
  return Scaffold(
    appBar: AppBar(),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton.small(child: const Icon(Icons.refresh),onPressed: (){
      setState(() {
        
      });
    }),
    bottomNavigationBar: BottomAppBar(
          color: Colors.indigo,
          notchMargin: 6.0,
          shape: AutomaticNotchedShape(
            RoundedRectangleBorder(),
            StadiumBorder(
              side: BorderSide(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
    ),
    body: FutureBuilder<List<UserModel>>(
      future: UserRepository.getUsersRequested(),
      builder: ((context, snapshot) {
             return builder(context,
              snapshot,
              ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              final user = snapshot.data![index];
              return ListTile(
                leading: user.avatar != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          user.avatar!,
                          width: 50,
                          height: 50,
                        ),
                      )
                    : null,
                title: Text(user.email ?? ''),
                subtitle: Text(user.firstName ?? ''),
              );
            },
          ));
      }),
    ),
  );
}

}
