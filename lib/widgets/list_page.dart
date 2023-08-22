import 'package:bolsa_flutter/models/solicitud.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:styled_widget/styled_widget.dart';

class ListPage extends StatelessWidget {
  ListPage({super.key});
  
  List<Solicitudes> solicitudes = [
    Solicitudes(serie: "001",
     descripcion: "Descripcion de la solitud",
     title: "Solicitud",
     assets: "assets/images/home-bg.png"),
     Solicitudes(serie: "002",
     descripcion: "Descripcion de la solitud",
     title: "Solicitud",
     assets: "assets/images/home-bg.png"),
     Solicitudes(serie: "003",
     descripcion: "Descripcion de la solitud",
     title: "Solicitud",
     assets: "assets/images/home-bg.png"),
     Solicitudes(serie: "004",
     descripcion: "Descripcion de la solitud",
     title: "Solicitud",
     assets: "assets/images/home-bg.png"),
     Solicitudes(serie: "005",
     descripcion: "Descripcion de la solitud",
     title: "Solicitud",
     assets: "assets/images/home-bg.png"),
     Solicitudes(serie: "006",
     descripcion: "Descripcion de la solitud",
     title: "Solicitud",
     assets: "assets/images/home-bg.png")

  ];

  @override
  Widget build(BuildContext context) {
    return buildGrid();
  }

  ListView buildList() {
    return ListView.builder(itemBuilder: (context,index){
          return buildSolicitudCard(solicitudes[index]);
  },itemCount: solicitudes.length,);
  
  }

   GridView buildGrid() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

      itemBuilder: (context,index){
        
          return ConstrainedBox(
  constraints: const BoxConstraints.expand(),
  child: buildSolicitudCard(solicitudes[index]),
);
  },itemCount: solicitudes.length,);
  
  }

  Widget buildSolicitudCard(Solicitudes solicitud){
        return SizedBox(
          width: 200,
          height: 300,
          child: Card(
            elevation: 10,
            margin: const EdgeInsets.all(20),
            child: Column(
                children: [
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(solicitud.assets),fit: BoxFit.cover)
                          
                        ),
                      ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: const Icon(Icons.padding),
                      contentPadding: EdgeInsets.all(12),
                      title: Text(solicitud.title),
                      subtitle: Text(solicitud.descripcion),
                    )
                  
                  )
                ],
            ),
          ),
        );
  }
}