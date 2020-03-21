import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

  class HomePage extends StatefulWidget {
      const HomePage({ Key key }) : super(key: key);
      @override
      _HomePageState createState() => _HomePageState();
    }

    class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
      final List<Tab> myTabs = <Tab>[
        Tab(text: 'Perfil'),
        Tab(text: 'Eventos'),
        Tab(text: 'Calendario'),
      ];

      TabController _tabController;

      @override
      void initState() {
        super.initState();
        _tabController = TabController(vsync: this, length: myTabs.length);
      }

    @override
    void dispose() {
      _tabController.dispose();
      super.dispose();
    }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              controller: _tabController,
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: myTabs.map((Tab tab) {
              final String label = tab.text.toLowerCase();
              return Center(
                child: Text(
                  'This is the $label tab',
                  style: const TextStyle(fontSize: 36),
                ),
              );
            }).toList(),
          ),
        );
      }
    }
