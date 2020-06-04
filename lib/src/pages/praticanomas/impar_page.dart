import 'dart:ui';

import 'package:flutter/material.dart';
 

 
class ImparPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('el numero de la pagina es impar'),
          actions: <Widget>[
            FlatButton(
              padding: EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://images.mediotiempo.com/WNjl0DPonK8MTgqX4bFrPXP6tbU=/958x596/uploads/media/2019/05/29/iron-man-encargado-echar-andar.jpg'),
                radius: 20.0,
              ),
              onPressed: (){
                _mostrarAvatar(context);
              },
            ),
            CircleAvatar(
              child: Text('VR'),
              backgroundColor: Colors.deepPurple,
            ),

          ],
        ),
          body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      
    );
  }

  void _mostrarAvatar( BuildContext context) {
    final _photo  = Image(
            image: NetworkImage('https://images.mediotiempo.com/WNjl0DPonK8MTgqX4bFrPXP6tbU=/958x596/uploads/media/2019/05/29/iron-man-encargado-echar-andar.jpg'),
            height: 700.0,
            fit: BoxFit.cover,
          );  
    showDialog(
      context : context,
      barrierDismissible: true,
  
      builder: (context){
      return AlertDialog(
          content: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 3.0, // cantidad de sombra
              spreadRadius: 0.10, // Dureza de sombra
              offset: Offset (10.0, 10.0) // Ubicacion en el plano
            ), 
            ]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: _photo,
            )
        ),

    );
    }
  );
  }
}