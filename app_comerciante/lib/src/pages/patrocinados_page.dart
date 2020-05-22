import 'package:flutter/material.dart';


class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Eventos patrocinados';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back),        
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(            
            child: Column(
              children: <Widget>[
                _patrocinados(context),                         
                _crearBoton(context),                
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }

  Widget _patrocinados(BuildContext context) {
    return Container(
      decoration: BoxDecoration(                
        border: Border.all(
          color: Colors.deepPurple,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
       child: Column(
         children: <Widget>[           
             FlatButton(
                   child:Row(
                     children: <Widget>[                       
                       Text('Artesania Rurales                                        ', textScaleFactor: 1.2,),                                  
                       Icon(Icons.delete)
                     ],
                   ),
                   onPressed: () => _mostrarAlert(context),
                   padding: EdgeInsets.all(10.0),                   //color: Colors.green,                                                         //textColor: Colors.white,
            ),
            FlatButton(
                   child:Row(
                     children: <Widget>[                       
                       Text('Artesania Rurales                                        ', textScaleFactor: 1.2,),                                  
                       Icon(Icons.delete)
                     ],
                   ),
                   onPressed: () => _mostrarAlert(context),
                   padding: EdgeInsets.all(10.0),                   //color: Colors.green,                                                         //textColor: Colors.white,
            ),
            FlatButton(
                   child:Row(
                     children: <Widget>[                       
                       Text('Artesania Rurales                                        ', textScaleFactor: 1.2,),                                  
                       Icon(Icons.delete)
                     ],
                   ),
                   onPressed: () => _mostrarAlert(context),
                   padding: EdgeInsets.all(10.0),                   //color: Colors.green,                                                         //textColor: Colors.white,
            ),
            FlatButton(
                   child:Row(
                     children: <Widget>[                       
                       Text('Artesania Rurales                                        ', textScaleFactor: 1.2,),                                  
                       Icon(Icons.delete)
                     ],
                   ),
                   onPressed: () => _mostrarAlert(context),
                   padding: EdgeInsets.all(10.0),                   //color: Colors.green,                                                         //textColor: Colors.white,
            ),
            FlatButton(
                   child:Row(
                     children: <Widget>[                       
                       Text('Artesania Rurales                                        ', textScaleFactor: 1.2,),                                  
                       Icon(Icons.delete)
                     ],
                   ),
                   onPressed: () => _mostrarAlert(context),
                   padding: EdgeInsets.all(10.0),                   //color: Colors.green,                                                         //textColor: Colors.white,
            ),

           
         ],
       )
    );
  }

  void _mostrarAlert(BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {

        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
          title: Text('Estas seguro de eliminar el evento'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Gracias por apoyarnos sera en una proxima oportunidad'),
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

  Widget _crearBoton(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Colors.green,
      textColor: Colors.white,
      label: Text('Guardar Cambios'),
      icon: Icon( Icons.save ),
      onPressed: ( ) => Navigator.pop(context)
    );
  }
}