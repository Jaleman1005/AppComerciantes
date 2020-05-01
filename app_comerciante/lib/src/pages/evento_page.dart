import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


import 'package:app_comerciante/src/models/evento_model.dart';
import 'package:app_comerciante/src/providers/evento_provider.dart';
import 'package:app_comerciante/src/utils/utils.dart' as utils;


class EventoPage extends StatefulWidget {

  @override
  _EventoPageState createState() => _EventoPageState();
}

class _EventoPageState extends State<EventoPage> {
  
  final formKey     = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final eventoProvider = new EventosProvider();

  EventoModel evento = new EventoModel();
  bool _guardando = false;
  File foto;

  @override
  Widget build(BuildContext context) {

    final EventoModel prodData = ModalRoute.of(context).settings.arguments;
    if ( prodData != null ) {
      evento = prodData;
    }
    
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Evento'),
        actions: <Widget>[
          IconButton(
            icon: Icon( Icons.photo_size_select_actual ),
            onPressed: _seleccionarFoto,
          ),
          IconButton(
            icon: Icon( Icons.camera_alt ),
            onPressed: _tomarFoto,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                _mostrarFoto(),
                _crearNombre(),
                _crearUbicacion(),
                _crearCapacidad(),
                _crearFecha(),
                _crearDisponible(),
                _crearBoton()
              ],
            ),
          ),
        ),
      ),
    );

  }

  Widget _crearNombre() {

    return TextFormField(
      initialValue: evento.nombre,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: 'Nombre del evento'
      ),
      onSaved: (value) => evento.nombre = value,
      validator: (value) {
        if ( value.length < 3 ) {
          return 'Ingrese el nombre del evento';
        } else {
          return null;
        }
      },
    );

  }

    Widget _crearUbicacion() {

    return TextFormField(
      initialValue: evento.ubicacion,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: 'Ubicacion del evento'
      ),
      onSaved: (value) => evento.ubicacion = value,
      validator: (value) {
        if ( value.length < 3 ) {
          return 'Ingrese la ubicacion evento';
        } else {
          return null;
        }
      },
    );

  }

    Widget _crearCapacidad() {

    return TextFormField(
      initialValue: evento.capacidad,
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        labelText: 'Capacidad de personas para el evento'
      ),
      onSaved: (value) => evento.capacidad = value,
      validator: (value) {
        if ( value.length < 3 ) {
          return 'Ingrese la capacidad del evento';
        } else {
          return null;
        }
      },
    );

  }

      Widget _crearFecha() {

    return TextFormField(
      initialValue: evento.capacidad,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        labelText: 'Fecha del evento'
      ),
      onSaved: (value) => evento.capacidad = value,
      validator: (value) {
        if ( value.length < 3 ) {
          return 'Ingrese la fecha del evento';
        } else {
          return null;
        }
      },
    );

  }

  Widget _crearDisponible() {

    return SwitchListTile(
      value: evento.disponible,
      title: Text('Disponible'),
      activeColor: Colors.deepPurple,
      onChanged: (value)=> setState((){
        evento.disponible = value;
      }),
    );

  }



  Widget _crearBoton() {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Colors.deepPurple,
      textColor: Colors.white,
      label: Text('Guardar'),
      icon: Icon( Icons.save ),
      onPressed: ( _guardando ) ? null : _submit,
    );
  }

  void _submit() async {

    

    if ( !formKey.currentState.validate() ) return;

    formKey.currentState.save();

    setState(() {_guardando = true; });

    if ( foto != null ) {
      evento.fotoUrl = await eventoProvider.subirImagen(foto);
    }



    if ( evento.id == null ) {
      eventoProvider.crearEvento(evento);
    } else {
      eventoProvider.editarEvento(evento);
    }


    // setState(() {_guardando = false; });
    mostrarSnackbar('Registro guardado');

    Navigator.pop(context);

  }


  void mostrarSnackbar(String mensaje) {

    final snackbar = SnackBar(
      content: Text( mensaje ),
      duration: Duration( milliseconds: 1500),
    );

    scaffoldKey.currentState.showSnackBar(snackbar);

  }


  Widget _mostrarFoto() {

    if ( evento.fotoUrl != null ) {
      
      return FadeInImage(
        image: NetworkImage( evento.fotoUrl ),
        placeholder: AssetImage('assets/jar-loading.gif'),
        height: 300.0,
        fit: BoxFit.contain,
      );

    } else {

      return Image(

        image: AssetImage( foto?.path ?? 'assets/no-image.png'),
        height: 300.0,
        fit: BoxFit.cover,

      );

    }

  }


  _seleccionarFoto() async {

    _procesarImagen( ImageSource.gallery );

  }
  
  
  _tomarFoto() async {

    _procesarImagen( ImageSource.camera );

  }

  _procesarImagen( ImageSource origen ) async {

    foto = await ImagePicker.pickImage(
      source: origen
    );

    if ( foto != null ) {
      evento.fotoUrl = null;
    }

    setState(() {});

  }


}
