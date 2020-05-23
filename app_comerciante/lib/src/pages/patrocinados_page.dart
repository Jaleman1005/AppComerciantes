import 'package:drag_list/drag_list.dart';
import 'package:flutter/material.dart';


class InputPage extends StatelessWidget {
  final _itemHeight = 72.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Eventos Patrocinados')),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: DragList<String>(
            items: _countries,
            itemExtent: _itemHeight,
            handleBuilder: (_) => AnimatedIcon(
              icon: AnimatedIcons.menu_arrow,
              progress: AlwaysStoppedAnimation(0.0),
            ),
            feedbackHandleBuilder: (_, transition) => AnimatedIcon(
              icon: AnimatedIcons.menu_arrow,
              progress: transition,
            ),
            itemBuilder: (_, item, handle) => Container(
              height: _itemHeight,
              margin: const EdgeInsets.symmetric(vertical:10.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(              
                border: Border.all(
                  color: Colors.deepPurple,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),                
                child: Row(
                  children: [
                  Expanded(child: Center(child: Text(item.value))),handle,                  
                ]),
              ),
            ),
          ),
        ),      
    );
  }

  final _countries = [
    'Artesanias Rurales',
    'Comida Tipica',
    'Ensaladas de la region',
    'Utilidades del cafe',
    'De la plaza a tu mesa',
  ];
}