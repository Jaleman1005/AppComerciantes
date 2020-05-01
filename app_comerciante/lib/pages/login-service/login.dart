import 'package:flutter/material.dart';

import 'package:app_comerciante/pages/home-service/home.dart';
import 'package:app_comerciante/pages/registro-service/registro.dart';


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

// Used for controlling whether the user is loggin or creating an account
enum FormType {
  login,
  register
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _buildBar(context),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            _buildTextFields()
          ],
        ),
      ),
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: new Text("APP-COMERCIANTE"),
      centerTitle: true,
    );
  }

  Widget _buildTextFields() {
    return new Container(
      child: new Column(
        children: <Widget>[
          TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Correo',
              ),
            ),
            Text(''),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          new Container(
            child: new Column(
              children: <Widget>[
              new RaisedButton(
                child: new Text('Ingresar'),
                onPressed: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
              }, 
              )
            ],
            ),
          ),
          new Container(
            child: new Column(
              children: <Widget>[
            new RaisedButton(
              child: new Text('Crear usuario'), 
              onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistroPage()),
                );
              }, 
              )
            ],

            ),
          ),   
        ],
      ),
    );
  }
}
