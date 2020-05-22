import 'package:flutter/material.dart';

import 'package:app/src/pages/evento_list.dart';
import 'package:app/src/pages/evento_page.dart';


class ValidadorEvento extends StatefulWidget {
  @override
  _ItemValidadorEventoState createState() =>
      _ItemValidadorEventoState();
}

class _ItemValidadorEventoState extends State<ValidadorEvento> {
  static const int dualPanelBreakpoint = 600;
  Widget _buildSinglePanelLayout() {
    return EventoListPage();
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    if (shortestSide < dualPanelBreakpoint) {
      content = _buildSinglePanelLayout();
    } else {
      content = _buildDualPanelLayout();
    }

    return Scaffold(
      body: content,
    );
  }

  Widget _buildDualPanelLayout() {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Material(
            elevation: 4.0,
            child: EventoListPage()
            ),
          ),
        Flexible(
          flex: 3,
          child: EventoPage()
        ),
      ],
    );
  }

}
