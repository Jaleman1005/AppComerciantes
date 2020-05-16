
import 'package:comerciantes/src/models/evento_model.dart';
import 'package:flutter/material.dart';
import 'package:comerciantes/src/bloc/provider.dart';
import 'package:comerciantes/src/providers/evento_provider.dart';

class EventoListPage extends StatelessWidget {
  static const int dualPanelBreakpoint = 600;
  final eventosProvider = new EventosProvider();
  String temp;
  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    if (shortestSide < dualPanelBreakpoint) {
      temp = 'evento';
    } else {
      temp = 'Eventos';
    }

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
      future: eventosProvider.cargarEventos(),
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
            
            ListTile(
              title: Text('${ evento.nombre } - ${ evento.capacidad }'),
              subtitle: Text( evento.id ),
              onTap: () => Navigator.pushNamed(context, temp, arguments: evento ),
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
      onPressed: ()=> Navigator.pushNamed(context, 'Eventos'),
    );
  }

}