import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('ListTile Title'),
          ),
          Divider(),
          ListTile(
            title: Text('ListTile Title'),
          ),
          Divider(),
          ListTile(
            title: Text('ListTile Title'),
          ),
          Divider(),
          ListTile(
            title: Text('ListTile Title'),
          ),
        ],
      ),
    );
  }
}
