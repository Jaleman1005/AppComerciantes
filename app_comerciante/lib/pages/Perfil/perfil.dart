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
      body: Column(
        children: <Widget>[
          VistaFondoPerfil(),
          SumaPatrocinadoresProductos(),
          Text('Llevo viviendo en el campo toda mi vida, me crie con mi madre la cual fue campesina, mis 3 hermanos y 2 hermanas, ellos viven en la ciudad y gracias a ellos me entere de esta alternativa para vender los productos que me brinda la finca.'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset('assets/arroz.jpg')
              ),
              Expanded(
                child: Image.asset('assets/papas.jpg')
              ),
              Expanded(
                child: Image.asset('assets/trigo.jpg')
              ),
              
            ],
          ),
        ],
      )
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
