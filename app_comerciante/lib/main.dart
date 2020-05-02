import 'package:appdiseno/src/pages/evento_list.dart';
import 'package:appdiseno/src/pages/evento_page.dart';
import 'package:appdiseno/src/pages/producto_list.dart';
import 'package:appdiseno/src/pages/registro_page.dart';
import 'package:flutter/material.dart';
import 'package:appdiseno/src/bloc/provider.dart';
import 'package:appdiseno/src/pages/home_page.dart';
import 'package:appdiseno/src/pages/login_page.dart';
import 'package:appdiseno/src/pages/producto_page.dart';
 
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
          'productoList'           : ( BuildContext context ) => ProductoListPage(),
          'eventoList'           : ( BuildContext context ) => EventoListPage()
        },
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
        ),
      ),
    );
      
  }
}