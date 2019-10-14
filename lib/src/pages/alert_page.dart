import 'package:flutter/material.dart';

import 'package:componentes/src/UI/floating_button.dart';

class AlertPage extends StatelessWidget {
  static const String id = 'alert';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingButton(context),
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la caja de la alerta'),
                SizedBox(
                  height: 10.0,
                ),
                FlutterLogo(size: 100.0),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
