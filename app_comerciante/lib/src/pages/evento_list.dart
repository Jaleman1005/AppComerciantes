import 'package:app/src/models/evento_model.dart';
import 'package:flutter/material.dart';
import 'package:app/src/bloc/provider.dart';
import 'package:app/src/providers/evento_provider.dart';

class EventoListPage extends StatelessWidget {
  

  final eventosProvider = new EventosProvider();
  
  String temp;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de eventos')
      ),
      body: _crearListado(),
      floatingActionButton: _crearBoton( context ),
    );
  }


  Widget _crearListado() {

    return FutureBuilder(
      future: eventosProvider.cargarEvento(),
      builder: (BuildContext context, AsyncSnapshot<List<EventoModel>> snapshot) {
        if ( snapshot.hasData ) {

          final eventos = snapshot.data;

          return ListView.builder(
            itemCount: eventos.length,
            itemBuilder: (context, i) => _crearItem(context, eventos[i] ),
          );

        } else {
          return Center( child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _crearItem(BuildContext context, EventoModel evento ) {

    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
      ),
      onDismissed: ( direccion ){
        eventosProvider.borrarEvento(evento.id);
      },
      child: Card(
        elevation: 10.0,        
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
        child: Column(
          children: <Widget>[
            ( evento.fotoUrl == null ) 
              ? Image(image: AssetImage('assets/no-image.png'))
              : FadeInImage(
                image: NetworkImage( evento.fotoUrl ),
                placeholder: AssetImage('assets/jar-loading.gif'),
                height: 300.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            
             Row(
               children: <Widget>[
                 FlatButton(
                   child:Text('${ evento.nombre }'),
                   onPressed: () => Navigator.pushNamed(context, 'evento', arguments: evento ),
                   padding: EdgeInsets.all(10.0),
                   color: Colors.green,                                      
                   textColor: Colors.white,
                 ),
                 FlatButton(
                   child:Text("Patrocinar", textAlign: TextAlign.right,),
                   onPressed: () => _mostrarAlert(context),
                   padding: EdgeInsets.all(10.0),
                   color: Colors.deepPurple,
                   textColor: Colors.white,
                 )
               ],
              ),  
          ],
        ),
      )
    );

  }

  _crearBoton(BuildContext context) {
    return FloatingActionButton(
      child: Icon( Icons.add ),
      backgroundColor: Colors.deepPurple,
      onPressed: ()=> Navigator.pushNamed(context, 'evento'),
    );
  }

  void _mostrarAlert(BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {

        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
          title: Text('Gracias por tu apoyo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('En este momento nos pondremos en contacto y recibiras mas información'),
              //FlutterLogo( size: 100.0 )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        );

      }

    );

  }

}