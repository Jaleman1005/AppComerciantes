import 'package:flutter/material.dart';

class CrearProducto extends StatelessWidget {
  const CrearProducto({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crear Producto'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
            children: <Widget>[
              Text('Nombre del producto', style: TextStyle(fontSize: 15)),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre del producto'),
              ),
              Text(''),
              Text('Descripción del producto', style: TextStyle(fontSize: 15)),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Descripción del producto'),
              ),
        ],
      ),
    );
  }
}
