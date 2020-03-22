import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: VistaFondoPerfil()
    );
  }
}

class VistaFondoPerfil extends StatelessWidget {
  const VistaFondoPerfil({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 250,
          padding: EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fondo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              CircleAvatar(
                radius: 67,
                backgroundColor: Color.fromRGBO(59, 131, 189, 300),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/perfil.jpg'),
                ),
              ),
              Text('Pepito peres',
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            ],
          ),
        ),
        SumaPatrocinadoresProductos(),
      ],
    );
  }
}

class SumaPatrocinadoresProductos extends StatelessWidget {
  const SumaPatrocinadoresProductos({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        padding: EdgeInsets.symmetric(vertical: 20),            
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('23', style: TextStyle(fontSize: 20)),
                Text('patrocinadores', style: TextStyle(fontSize: 20)),
              ],
            ),
            Column(
              children: <Widget>[
                Text('33', style: TextStyle(fontSize: 20)),
                Text('Productos', style: TextStyle(fontSize: 20)),
              ],
            ),
          ],
        )
      );
  }
}
