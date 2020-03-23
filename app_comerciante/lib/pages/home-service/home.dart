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
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.add), text: 'Crear'),
                Tab(icon: Icon(Icons.fastfood), text: 'Productos'),
                Tab(icon: Icon(Icons.perm_identity), text: 'Perfil'),
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