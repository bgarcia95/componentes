import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  static const String id = 'list';
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  // Controlador la lista
  ScrollController _scrollController = ScrollController();

  List<int> _listaNumeros = [];
  int _ultimoNumero = 0;

  @override
  void initState() { 
    super.initState();
    _agregar10();

    // Infinite Scroll in action
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _agregar10();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, index) {
        final imagen = _listaNumeros[index];
        return FadeInImage(
          fit: BoxFit.contain,
          image: NetworkImage('https://picsum.photos/id/$imagen/300/400'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }

  void _agregar10() {
    for (var i = 1; i <= 10; i++) {
      _ultimoNumero++;
      _listaNumeros.add(_ultimoNumero);
    }

    setState(() {
      
    });
  }

}
