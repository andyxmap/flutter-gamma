import 'package:bolsa_flutter/infraestructure/repository.dart';
import 'package:bolsa_flutter/pages/examples.dart';
import 'package:bolsa_flutter/pages/isar_add.dart';
import 'package:bolsa_flutter/pages/isar_crud.dart';
import 'package:bolsa_flutter/pages/isar_edit.dart';
import 'package:bolsa_flutter/pages/user_request.dart';
import 'package:bolsa_flutter/utils/location_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'models/isar_models/solicitud.dart';
import 'models/solicitud.dart';
import 'pages/home.dart';
import 'pages/request_service_flow.dart';
import 'utils/constants.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Constants.primaryColor,
          scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: "/",
        onGenerateRoute: _onGenerateRoute,
    );
      });
  }
}

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const IsarList();
      });
    case "/repair-flow":
      return MaterialPageRoute(builder: (BuildContext context) {
        return RequestServiceFlow();
      });
    case "/list":
      return MaterialPageRoute(builder: (BuildContext context) {
        return const IsarList();
      });
    case "/listadd":
    return MaterialPageRoute(builder: (BuildContext context) {
        return IsarAdd();
      });
    case "/listedit":
      final args = settings.arguments as Solicitud;
      return MaterialPageRoute(builder: (BuildContext context) {
        return IsarEdit(solicitud: args);
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
  }
}
