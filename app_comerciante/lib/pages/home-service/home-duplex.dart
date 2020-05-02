import 'package:app_comerciante/pages/Perfil/perfil.dart';
import 'package:app_comerciante/pages/evento-service/evento.dart';
import 'package:app_comerciante/pages/productos/crear-producto.dart';
import 'package:app_comerciante/pages/productos/vista-productos.dart';
import 'package:app_comerciante/pages/utils/validate.dart';
import 'package:flutter/material.dart';

class HomePageDuplex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
              appBar: AppBar(
                title: Text('APP-COMERCIANTE'),
              ),
              body: Column(children: <Widget>[
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.portrait),
                        title: Text('Perfil'),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Ver perfil'),
                            onPressed: () {
                              Navigator.pushNamed(context, 'validar');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]))),
    );
  }
}
