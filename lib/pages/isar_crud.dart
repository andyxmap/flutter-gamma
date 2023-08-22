import 'package:bolsa_flutter/widgets/builder.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import '../models/isar_models/solicitud.dart';
import '../utils/provider.dart';

class IsarList extends StatefulWidget {
  const IsarList({super.key});

  @override
  State<IsarList> createState() => _IsarListState();
}

class _IsarListState extends State<IsarList> {
final provider = GetIt.instance.get<SolicitudProvider>();  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton.small(child: const Icon(Icons.refresh),onPressed: (){
      setState(() {
        
      });
    }),
    bottomNavigationBar: bottomAppBar(),
        body: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(12),
          height: size.height,
          child: Column(
            children: [
              Expanded(
                child: FutureBuilder(
                  future: provider.getSolicitudes(),
                  builder: (context,snapshot){
                  return builder(context, snapshot,
                  ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context,index){
                    Solicitud sol = snapshot.data?.elementAt(index) as Solicitud;

                    return GFCard(
                      elevation: 10,
                      content: GFListTile(
                        avatar: GFAvatar(
                          backgroundColor: sol.isClose as bool ? Colors.green : Colors.redAccent,
                          child: Icon(sol.isClose as bool ? Icons.done : Icons.close),
                        ),
                        titleText: snapshot.data?.elementAt(index).serie,
                        subTitleText: snapshot.data?.elementAt(index).createdAt.toString(),
                        padding: const EdgeInsets.all(12),
                        icon: GestureDetector(child: const Icon(Icons.edit),
                        onTap: (){
                           pushRouteToEdit(context, snapshot.data?.elementAt(index) as Solicitud);
                        },
                        ),
                      ),
                    );
                }));
                }),
              )
            ],)
        
        ));
  }

  Future<void> deleteAllList() async {
    await provider.deleteAll();
  }

  pushRouteToEdit(BuildContext context, Solicitud solicitud){
        Navigator.of(context).pushNamed(
          "/listedit",
          arguments: solicitud
        );
  }

    pushRouteToAdd(BuildContext context){
        Navigator.of(context).pushNamed(
          "/listadd"
        );
  }

  Widget bottomAppBar(){
    return BottomAppBar(
          color: Colors.indigo,
          notchMargin: 6.0,
          shape: const AutomaticNotchedShape(
            RoundedRectangleBorder(),
            StadiumBorder(
              side: BorderSide(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.add_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    pushRouteToAdd(context);
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.delete_outline,
                    color: Colors.white,
                  ),
                  onPressed: () async{
                    deleteAllList().then((value) => setState((){}));
                  },
                ),
              ],
            ),
          ),
    );
  }
}
