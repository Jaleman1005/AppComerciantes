import 'package:app_comerciante/pages/login-service/login.dart';
import 'package:app_comerciante/pages/productos/crear-producto.dart';
import 'package:app_comerciante/pages/productos/vista-productos.dart';
import 'package:flutter/material.dart';

import 'package:app_comerciante/pages/Perfil/perfil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Perfil(),
    VistaProductos(),
    CrearProducto(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Perfil'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text('Ver productos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Crear producto'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}