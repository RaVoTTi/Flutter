
import 'package:flutter/material.dart';

final Map <String, IconData> _icons = {
  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,

};
final Map < int, IconData>  _iconsRandom =  {
  1 : Icons.add_alert,
  0 : Icons.accessibility,
  2 : Icons.folder_open,
};

Icon getIcon(String nameIcon){


  return Icon(_icons[nameIcon]);
}
Icon getIconRandom(int number){
  final rest = number % 3;


  return Icon( _iconsRandom [rest] );
}