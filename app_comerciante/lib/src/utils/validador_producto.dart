import 'package:flutter/material.dart';

import 'package:app/src/pages/producto_list.dart';
import 'package:app/src/pages/producto_page.dart';

class ValidadorProducto extends StatefulWidget {
  @override
  _ItemValidadorProductoState createState() =>
      _ItemValidadorProductoState();
}

class _ItemValidadorProductoState extends State<ValidadorProducto> {
  static const int dualPanelBreakpoint = 600;
  Widget _buildSinglePanelLayout() {
    return ProductoListPage();
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
            child: ProductoListPage()
            ),
          ),
        Flexible(
          flex: 3,
          child: ProductoPage()
        ),
      ],
    );
  }

}
