import 'package:componentes/src/UI/floating_button.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  static const String id = 'avatar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
      ),
      floatingActionButton: floatingButton(context),
    );
  }
}
