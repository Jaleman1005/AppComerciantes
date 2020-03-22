import 'package:flutter/material.dart';

class VistaProductosPage extends StatelessWidget {
  const VistaProductosPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
        centerTitle: true,
      ),
      body: ListView(
      children: <Widget>[
        CardPapas(),
        CardArroz(),
        CardTrigo(),
        
      ] 
    ),
    );
  }
}

class CardPapas extends StatelessWidget {
  const CardPapas({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child: Image.asset('assets/papas.jpg'),
          ),
          const ListTile(
            title: Text('Papas'),
            subtitle: Text('producto 100% colombiano'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(onPressed: () {}, child: const Text('100 Bultos')),
              FlatButton(onPressed: () {}, child: const Text('Calificacion: 4.8'))
            ],
          )
        ],
      ),
    );
  }
}

class CardArroz extends StatelessWidget {
  const CardArroz({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child: Image.asset('assets/arroz.jpg'),
          ),
          const ListTile(
            title: Text('Arroz'),
            subtitle: Text('producto 100% colombiano'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(onPressed: () {}, child: const Text('67 Bultos')),
              FlatButton(onPressed: () {}, child: const Text('Calificacion: 4.9'))
            ],
          )
        ],
      ),
    );
  }
}

class CardTrigo extends StatelessWidget {
  const CardTrigo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child: Image.asset('assets/trigo.jpg'),
          ),
          const ListTile(
            title: Text('Trigo'),
            subtitle: Text('producto 100% colombiano'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(onPressed: () {}, child: const Text('100 Bultos')),
              FlatButton(onPressed: () {}, child: const Text('Calificacion: 4.8'))
            ],
          )
        ],
      ),
    );
  }
}