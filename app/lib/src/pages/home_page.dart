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
          _cardTipo2(context,'Eventos','v1588379572'),
          SizedBox(height: 30.0),
           _cardTipo2(context,'Productos','v1588436086'),
          SizedBox(height: 30.0),
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
}