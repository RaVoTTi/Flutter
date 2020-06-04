import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);
 
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 20.0;
  double _height = 20.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina animada'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          duration: Duration (seconds: 2),
          curve: Curves.elasticOut,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color 
          ),
          ),

        ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_outline),
        onPressed: (){
          _animation();
        },
      ),
    );
  }
  void _animation(){
    
    final random = Random( );
    _width = random.nextInt(300).toDouble();
    if (_width < 70){
      _width = 70;
    }
    _height = random.nextInt(300).toDouble();
    if (_height < 70){
      _height = 70;
    }
    _color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      0.8);
    print(_height.toStringAsFixed(0) + '#######' + _width.toStringAsFixed(0));
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    setState(() {
    });


  }
}