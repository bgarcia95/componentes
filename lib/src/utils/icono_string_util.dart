import 'package:flutter/material.dart';

// This sentence is to define a map
final _icons= <String, IconData> {
  'add_alert'  : Icons.add_alert,
  'accessibility'  : Icons.accessibility,
  'folder_open'  : Icons.folder_open,
};

// Function that returns an icon for our ListTile on home_page
Icon getIcon(String nombreIcono) => Icon(_icons[nombreIcono], color: Colors.blue);
