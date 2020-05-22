import 'package:app/src/models/user_model.dart';
import 'package:flutter/material.dart';


class PerfilPage extends StatelessWidget {
UserModel user = new UserModel();

final formKey     = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Perfil'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://res.cloudinary.com/dlrlog6ij/image/upload/v1590164509/perfil.jpg'),
              radius: 25.0,
            ),
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
                _crearNombre("Nombre"),
                _crearApellido("Apellido"),
                _crearCelular("Celular"),
                _crearCiudad("Ciudad"),
                _crearDescripcion("Descripcion"),
                _crearBoton(context)
              ],
            ),
          ),
        ),
      ),
    );    
  }

  Widget _crearNombre(String dato) {    
    return TextFormField(      
      initialValue: user.nombre,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: dato
      ),
      onSaved: (value) => user.nombre = value,
      validator: (value) {
        if ( value.length < 3 ) {
          return 'nombre';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearApellido(String dato) {    
    return TextFormField(      
      initialValue: user.apellido,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: dato
      ),
      onSaved: (value) => user.nombre = value,
      validator: (value) {
        if ( value.length < 3 ) {
          return 'apellido';
        } else {
          return null;
        }
      },
    );
  }
  Widget _crearCelular(String dato) {    
    return TextFormField(      
      initialValue: user.celular,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: dato
      ),
      onSaved: (value) => user.nombre = value,
      validator: (value) {
        if ( value.length < 3 ) {
          return 'celular';
        } else {
          return null;
        }
      },
    );
  }
  Widget _crearCiudad(String dato) {    
    return TextFormField(      
      initialValue: user.ciudad,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: dato
      ),
      onSaved: (value) => user.nombre = value,
      validator: (value) {
        if ( value.length < 3 ) {
          return 'ciudad';
        } else {
          return null;
        }
      },
    );
  }
  Widget _crearDescripcion(String dato) {    
    return TextFormField(      
      initialValue: user.descripcion,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: dato
      ),
      onSaved: (value) => user.nombre = value,
      validator: (value) {
        if ( value.length < 3 ) {
          return 'descripcion';
        } else {
          return null;
        }
      },
    );
  }
    Widget _crearBoton(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Colors.deepPurple,
      textColor: Colors.white,
      label: Text('Guardar Cambios'),
      icon: Icon( Icons.save ),
      onPressed: ( ) => Navigator.pop(context)
    );
  }
}

