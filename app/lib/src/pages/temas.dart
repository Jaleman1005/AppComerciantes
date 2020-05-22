import 'package:app/src/bloc/provider.dart';
import 'package:app/src/bloc/theme.dart';
import 'package:flutter/material.dart';

class TemasPages extends StatefulWidget {
  TemasPages({Key key}) : super(key: key);

  @override
  _TemasPagesState createState() => _TemasPagesState();
}

class _TemasPagesState extends State<TemasPages> {
  @override
  Widget build(BuildContext context) {
    /* final theme = Provider.of<ThemeChanger>(context); */
    return Column(
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
            ) */
       ],
    );
  }
}