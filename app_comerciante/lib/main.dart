import 'package:flutter/material.dart';

import 'package:comerciantes/src/pages/evento_list.dart';
import 'package:comerciantes/src/pages/evento_page.dart';
import 'package:comerciantes/src/pages/producto_list.dart';
import 'package:comerciantes/src/pages/registro_page.dart';
import 'package:comerciantes/src/utils/validador_evento.dart';
import 'package:comerciantes/src/bloc/provider.dart';
import 'package:comerciantes/src/pages/home_page.dart';
import 'package:comerciantes/src/pages/login_page.dart';
import 'package:comerciantes/src/pages/producto_page.dart';

import 'src/utils/validador_producto.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login'            : ( BuildContext context ) => LoginPage(),
          'registro'         : ( BuildContext context ) => RegistroPage(),
          'home'             : ( BuildContext context ) => HomePage(),
          'producto'         : ( BuildContext context ) => ProductoPage(),
          'evento'           : ( BuildContext context ) => EventoPage(),
          'productoList'     : ( BuildContext context ) => ProductoListPage(),
          'eventoList'       : ( BuildContext context ) => EventoListPage(),
          'Eventos'          : ( BuildContext context ) => ValidadorEvento(),
          'Productos'        : ( BuildContext context ) => ValidadorProducto()
        },
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
        ),
      ),
    );
      
  }
}