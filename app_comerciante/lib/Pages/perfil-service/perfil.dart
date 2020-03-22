import 'package:flutter/material.dart';


class PerfilPage extends StatelessWidget {
  const PerfilPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              VistaFondoPerfil(),
              SumaPatrocinadoresProductos(),
              Descripcion(),
            ],
          ),
        ],
      ),
    );
  }
}

class Descripcion extends StatelessWidget {
  const Descripcion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(
          "Llevo viviendo en el campo toda mi vida, me crie con mi madre la cual fue campesina, mis 3 hermanos y 2 hermanas, ellos viven en la ciudad y gracias a ellos me entere de esta alternativa para vender los productos que me brinda la finca.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15)),
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
              Text('Pepito perez',
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            ],
          ),
        ),
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
                Text('23', style: TextStyle(fontSize: 20, color: Colors.white)),
                Text('patrocinadores',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
            Column(
              children: <Widget>[
                Text('33', style: TextStyle(fontSize: 20, color: Colors.white)),
                Text('Productos',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
          ],
        ));
  }
}
