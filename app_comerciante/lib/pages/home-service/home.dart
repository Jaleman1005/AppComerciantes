import 'package:app_comerciante/pages/Perfil/perfil.dart';
import 'package:app_comerciante/pages/evento-service/evento.dart';
import 'package:app_comerciante/pages/productos/crear-producto.dart';
import 'package:app_comerciante/pages/productos/vista-productos.dart';
import 'package:flutter/material.dart';


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
              CrearProducto(),
              VistaProductos(),
              Perfil(),
            ],
          ),
        ),
      ),
    );
  }
}