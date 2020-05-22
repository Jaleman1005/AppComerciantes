import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:comerciantes/src/bloc/provider.dart';
import 'package:comerciantes/src/models/producto_model.dart';
import 'package:comerciantes/src/providers/productos_provider.dart';
=======
import 'package:app/src/bloc/provider.dart';
import 'package:app/src/models/producto_model.dart';

import 'package:app/src/providers/productos_provider.dart';
>>>>>>> Robayo

class ProductoListPage extends StatelessWidget {
  static const int dualPanelBreakpoint = 600;
  final productosProvider = new ProductosProvider();
  String temp; 
  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    if (shortestSide < dualPanelBreakpoint) {
      temp = 'producto';
    } else {
      temp = 'Productos';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de productos')
      ),
      body: _crearListado(),
      floatingActionButton: _crearBoton( context ),
    );
  }


  Widget _crearListado() {

    return FutureBuilder(
      future: productosProvider.cargarProductos(),
      builder: (BuildContext context, AsyncSnapshot<List<ProductoModel>> snapshot) {
        if ( snapshot.hasData ) {

          final productos = snapshot.data;

          return ListView.builder(
            itemCount: productos.length,
            itemBuilder: (context, i) => _crearItem(context, productos[i] ),
          );

        } else {
          return Center( child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _crearItem(BuildContext context, ProductoModel producto ) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
      ),
      onDismissed: ( direccion ){
        productosProvider.borrarProducto(producto.id);
      },
      child: Card(
        elevation: 10.0,        
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
        child: Column(
          children: <Widget>[
            ( producto.fotoUrl == null ) 
              ? Image(image: AssetImage('assets/no-image.png'))
              : FadeInImage(
                image: NetworkImage( producto.fotoUrl ),
                placeholder: AssetImage('assets/jar-loading.gif'),
                height: 300.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),                            
              Row(
               children: <Widget>[
                 FlatButton(
                   child:Text('${ producto.titulo }'),
                   onPressed: () => Navigator.pushNamed(context, temp, arguments: producto ),
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
      onPressed: ()=> Navigator.pushNamed(context, 'producto'),
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