import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class CrearProductoPage extends StatelessWidget {
  const CrearProductoPage({Key key}) : super(key: key);

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
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  maxLength: 30,
                  decoration: const InputDecoration(
                    hintText: 'Nombre del producto',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor inserte el nombre';
                    }
                    return null;
                  },
                ),
                Text(''),
                TextFormField(
                  maxLength: 150,
                  maxLines: 4,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Descripción del producto',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor inserte la descripción';
                    }
                    return null;
                  },
                ),
                Text(''),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Subir archivo',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor suba el archivo';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        
                      }
                    },
                    child: Text('Enviar', style: TextStyle(fontSize: 15, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
