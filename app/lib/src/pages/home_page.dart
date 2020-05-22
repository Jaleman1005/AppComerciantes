import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App-Comerciante'),
        actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.perm_contact_calendar),
          tooltip: 'Show Snackbar',
          onPressed: () => Navigator.pushNamed(context, 'Perfil'),
        ),
        IconButton(
          icon: const Icon(Icons.build),
          tooltip: 'Show Snackbar',
          onPressed: () => Navigator.pushNamed(context, 'configuracion'),
        ),
      ],
      ),        
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _patrocinados(context),
          SizedBox(height: 30.0),
          _cardTipo2(context,'Eventos','v1588379572'),
          SizedBox(height: 30.0),
           _cardTipo2(context,'Productos','v1588436086'),
          SizedBox(height: 30.0),
          _crearBoton(context)
        ],
      ),
    );
  }

  Widget _cardTipo2(BuildContext context,  String direccionamiento, String uri) {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://res.cloudinary.com/dlrlog6ij/image/upload/'+uri+'/'+direccionamiento+'.jpg'),            
            placeholder: AssetImage('assets/jar-loading.gif'),            
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          ListTile(
              title: Text('$direccionamiento'),              
              onTap: () => Navigator.pushNamed(context,'$direccionamiento' ),
            ),
        ],
      ),
    );


    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
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
                       Text('Productos patrocinados                                  ', textScaleFactor: 1.2,),                                  
                       Icon(Icons.arrow_forward_ios)
                     ],
                   ),
                   onPressed: () => Navigator.pushNamed(context, 'ListaPa' ),
                   padding: EdgeInsets.all(10.0),
                   //color: Colors.green,                                      
                   //textColor: Colors.white,
            ),
            FlatButton(
                   child:Row(
                     children: <Widget>[                       
                       Text('Eventos patrocinados                                      ', textScaleFactor: 1.2,),                                  
                       Icon(Icons.arrow_forward_ios)
                     ],
                   ),
                   onPressed: () => Navigator.pushNamed(context, 'ListaPa' ),
                   padding: EdgeInsets.all(10.0),
                   //color: Colors.green,                                      
                   //textColor: Colors.white,
            ),             
         ],
       )
    );
  }

  
  Widget _crearBoton(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Colors.redAccent,
      textColor: Colors.white,
      label: Text('Cerrar Sesion'),
      icon: Icon( Icons.close ),
      onPressed: ( ) => Navigator.pushNamed(context,'login')
    );
  }


}