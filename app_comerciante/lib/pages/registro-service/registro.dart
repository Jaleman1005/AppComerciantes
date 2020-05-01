import 'package:app_comerciante/pages/home-service/home.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class RegistroPage extends StatelessWidget {
  const RegistroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de usuario'),
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
                Text(''),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Rol',
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
                    hintText: 'Nombre completo',
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
                    hintText: 'Empresa',
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
                    hintText: 'Categoria',
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
                    hintText: 'Ciudad',
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
                    hintText: 'Contraseña',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor inserte la descripción';
                    }
                    return null;
                  },
                ),
                RaisedButton(
                  child: Text('Registrar'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
