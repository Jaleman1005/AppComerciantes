import 'package:flutter/material.dart';
import 'package:tests/Pages/evento-service/evento.dart';
import 'package:tests/Pages/perfil-service/perfil.dart';
import 'package:tests/Pages/productos-service/crear-producto.dart';
import 'package:tests/Pages/productos-service/vista-productos.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.stars)),
                Tab(icon: Icon(Icons.event)),
                Tab(icon: Icon(Icons.perm_identity)),
              ],
            ),
            title: Text('APP-COMERCIANTE'),
          ),
          body: TabBarView(
            children: [
              EventoPage(),
              CrearProductoPage(),
              VistaProductosPage(),
              PerfilPage(),
            ],
          ),
        ),
      ),
    );
  }
}