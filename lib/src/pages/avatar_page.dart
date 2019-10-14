import 'package:componentes/src/UI/floating_button.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  static const String id = 'avatar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOpxiV40NqyOZPHk_ngD-QfXtZUhYDQ9yodcgc-NQHAqkwDMHF'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text(
                'SL',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      floatingActionButton: floatingButton(context),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2ZqmMiZCez6wLBIFQRN04EjThRVODsMLotxRrSZUUdhE2f2Ypjg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
