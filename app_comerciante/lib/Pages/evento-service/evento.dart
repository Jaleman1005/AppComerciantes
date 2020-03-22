// Flutter code sample for Card

// This sample shows creation of a [Card] widget that can be tapped. When
// tapped this [Card]'s [InkWell] displays an "ink splash" that fills the
// entire card.

import 'package:flutter/material.dart';

void main() => runApp(EventoPage());

/// This Widget is the main application widget.
class EventoPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.event_note),
              title: Text('Nombre del evento'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () { /* ... */ },
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () { /* ... */ },
                ),
              ],
            ),
            const ListTile(
              leading: Icon(Icons.event_note),
              title: Text('Nombre del evento'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () { /* ... */ },
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () { /* ... */ },
                ),
              ],
            ),
            const ListTile(
              leading: Icon(Icons.event_note),
              title: Text('Nombre del evento'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () { /* ... */ },
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () { /* ... */ },
                ),
              ],
            ),
            const ListTile(
              leading: Icon(Icons.event_note),
              title: Text('Nombre del evento'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () { /* ... */ },
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: () { /* ... */ },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}