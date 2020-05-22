import 'package:app/src/pages/configuracion_page.dart';
import 'package:app/src/pages/patrocinados_page.dart';
import 'package:app/src/pages/perfil_page.dart';
import 'package:flutter/material.dart';

import 'package:app/src/pages/evento_list.dart';
import 'package:app/src/pages/evento_page.dart';
import 'package:app/src/pages/producto_list.dart';
import 'package:app/src/pages/registro_page.dart';
import 'package:app/src/utils/validador_evento.dart';
import 'package:app/src/bloc/provider.dart';
import 'package:app/src/pages/home_page.dart';
import 'package:app/src/pages/login_page.dart';
import 'package:app/src/pages/producto_page.dart';


import 'src/utils/validador_producto.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'login'            : ( BuildContext context ) => LoginPage(),
          'registro'         : ( BuildContext context ) => RegistroPage(),
          'home'             : ( BuildContext context ) => HomePage(),
          'producto'         : ( BuildContext context ) => ProductoPage(),
          'evento'           : ( BuildContext context ) => EventoPage(),
          'productoList'     : ( BuildContext context ) => ProductoListPage(),
          'eventoList'       : ( BuildContext context ) => EventoListPage(),
          'Eventos'          : ( BuildContext context ) => ValidadorEvento(),
          'Productos'        : ( BuildContext context ) => ValidadorProducto(),
          'Perfil'           : ( BuildContext context ) => PerfilPage(),
          'configuracion'    : ( BuildContext context ) => ConfiguracionPage(),
          'ListaPa'          : ( BuildContext context ) => InputPage()
        },
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
        ),
      ),
    );
      
  }
}