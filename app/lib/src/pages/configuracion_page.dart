import 'package:flutter/material.dart';

class ConfiguracionPage extends StatefulWidget {
  ConfiguracionPage({Key key}) : super(key: key);

  @override
  _ConfiguracionPageState createState() => _ConfiguracionPageState();
}

class _ConfiguracionPageState extends State<ConfiguracionPage> {
  @override
  Widget build(BuildContext context) {
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

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, this.children);

  final String title;
  final Column children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Temas',
    Column(
        children: [
          Text('perro funciono'),
          Text('perro funciono'),
          Text('perro funciono'),
          Text('perro funciono'),
        ],
    )
  )
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    /* if (root.children.isEmpty) */ /* return ListTile(title: Text(root.title)); */
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
