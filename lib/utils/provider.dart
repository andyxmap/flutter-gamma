import 'package:bolsa_flutter/models/isar_models/solicitud.dart';
import 'package:isar/isar.dart';


class SolicitudProvider{
 


  Isar isar;

  SolicitudProvider(this.isar);
  

  void addOrUpdateSolicitud(Solicitud solicitud) async {
    
      await isar.writeTxn(() async => {
            isar.collection<Solicitud>().put(solicitud)
      });
    
  }

  Future<List<Solicitud>> getSolicitudes(){
      return isar.collection<Solicitud>().where().findAll();
  }

  Future<void> delete(Solicitud solicitud) async {

     await isar.writeTxn(() async => {
            isar.collection<Solicitud>().delete(solicitud.id as int)
      });

  }

  Future<void> deleteAll() async {

     await isar.writeTxn(() async => {
            
            isar.collection<Solicitud>().clear()
      });

  }

  
}