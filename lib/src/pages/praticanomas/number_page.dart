import 'package:flutter/material.dart';
import 'package:flutter_tutorial_web/src/pages/praticanomas/home_temp.dart';

class NumberPage extends StatelessWidget {
  int numerito;
  NumberPage ({
    Key key,
    this.numerito,
  }

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
        child: Text(_titlePage(numerito))
      ),),

      body: Container(
        alignment:Alignment.center,
        child: RaisedButton(
          child: Text('Alerta'),
          color: Colors.red,
          textColor: Colors.yellow,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlert(context),

        ),
      ),
      floatingActionButton: FloatingActionButton(
      elevation: 50.0,
      child: Icon(Icons.assignment_returned),
      onPressed: (){
        Navigator.pop(context);
      },
      ),
    );
  }

  String _titlePage(int num) {
    return 'La casilla que seleccionaste es modulo' + (num).toString();
    }
  void 


  _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // permite cerrar = true, tenes que presionar un boton = false
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          title: Center(
            child:Text('Valentin Alerta'),
            ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                child: Text('ALERTA !!! ALERTA !!!')
                ),
              FlutterLogo(size: 100.0),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('OKEY'),
              onPressed: (){
                Navigator.of(context).pop();
              }
            ),
            RaisedButton(
              child: Text('CANCELAR'),
              onPressed: () => Navigator.of(context).pop()  
            )
          ],
        );
      });
  }}

