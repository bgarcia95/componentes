import 'package:flutter/material.dart';

import 'package:componentes/src/UI/floating_button.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingButton(context),
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
    );
  }
}
