import 'package:bolsa_flutter/utils/provider.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../infraestructure/repository.dart';
import '../models/isar_models/solicitud.dart';

final getIt = GetIt.instance;

Future<void> setup() async {

  
  final appDocumentsDir = await getApplicationDocumentsDirectory();
  print(appDocumentsDir.path);
  final isar = await Isar.open(
   [SolicitudSchema], directory: appDocumentsDir.path
);
  getIt.registerSingleton<UserRepository>(UserRepository());
  getIt.registerSingleton<Isar>(isar);
  getIt.registerSingleton<SolicitudProvider>(SolicitudProvider(isar));

}