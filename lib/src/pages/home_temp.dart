import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres','Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        centerTitle: true,
      ),
      body: ListView(
        children: _crearItemsCorto(),
      ),
    );
  }

  List<Widget> _crearItems() {

    List<Widget> lista = List<Widget>();

    for (String opc in opciones) {
      
      final tempWidget =  ListTile(
        title: Text(opc),
      );

      lista..add(tempWidget)
           ..add(Divider());

    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {

    return opciones.map(( item ){
      
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.hdr_weak),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();

  }




}
