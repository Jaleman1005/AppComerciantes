import 'package:app_comerciante/pages/Perfil/perfil.dart';
import 'package:app_comerciante/pages/home-service/home-duplex.dart';
import 'package:app_comerciante/pages/home-service/home.dart';
import 'package:flutter/material.dart';

class ValidadorContainer extends StatefulWidget {
  @override
  _ItemValidadorContainerState createState() =>
      _ItemValidadorContainerState();
}

class _ItemValidadorContainerState extends State<ValidadorContainer> {
  static const int dualPanelBreakpoint = 600;
  Widget _buildSinglePanelLayout() {
    return HomePage();
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    //final SeriesM series = ModalRoute.of(context).settings.arguments;
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    if (shortestSide < dualPanelBreakpoint) {
      content = _buildSinglePanelLayout();
    } else {
      content = _buildDualPanelLayout(/* series */);
    }

    return Scaffold(
      body: content,
    );
  }

  Widget _buildDualPanelLayout(/* SeriesM series */) {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Material(
            elevation: 4.0,
            child: HomePageDuplex()
            ),
          ),
        Flexible(
          flex: 3,
          child: Perfil()
        ),
      ],
    );
  }

}