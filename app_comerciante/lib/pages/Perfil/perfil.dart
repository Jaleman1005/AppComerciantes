import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
            Container( 
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/fondo.jpg'),
                  )
                ),
              ),
          Row(
          ),
        ],
      )
    );
  }
}