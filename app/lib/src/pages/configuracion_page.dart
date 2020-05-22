/* import 'package:app/src/bloc/provider.dart';
import 'package:app/src/bloc/theme.dart'; */

import 'package:flutter/material.dart';

class ConfiguracionPage extends StatefulWidget {
  ConfiguracionPage({Key key}) : super(key: key);

  @override
  _ConfiguracionPageState createState() => _ConfiguracionPageState();
}

class _ConfiguracionPageState extends State<ConfiguracionPage> {
  @override
  Widget build(BuildContext context) {
    /* final theme = Provider.of<ThemeChanger>(context); */
    return Scaffold(
        appBar: AppBar(
          title: Text('Configuracion'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
        ),
    );
  }
}

class Entry {
  Entry(this.title, this.children);
  final String title;
  final Column children;
}

final List<Entry> data = <Entry>[
  Entry(
    'Temas',
    Column(
        children: [
          /* FlatButton(
              onPressed: () => theme.setTheme(ThemeData.light()),
              child: Text('Light', style: Theme.of(context).textTheme.subtitle1),
            ),
            FlatButton(
              onPressed: () => theme.setTheme(ThemeData.dark()),
              child: Text('Dark', style: Theme.of(context).textTheme.subtitle1),
            ),
            FlatButton(
              onPressed: () => theme.setTheme(ThemeData(
                  primaryColor: Colors.cyan,
                  floatingActionButtonTheme: FloatingActionButtonThemeData(
                      backgroundColor: Colors.cyan))),
              child: Text('Cyan', style: Theme.of(context).textTheme.subtitle1),
            ), */
        ],
    )
  )
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTiles(Entry root) {
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: [root.children]
      );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}