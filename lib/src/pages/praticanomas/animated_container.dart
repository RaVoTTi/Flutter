import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);
 
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 0.0;
  double _height = 0.0;
  Color _color = Colors.transparent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina animada'),
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          color: _color,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_outline),
        onPressed: (){
          _Animation(_width, _height, _color)
        },
      ),
    );
  }
  void _Animation(_width , _height , _color){
  List<List> MEDIDAS =  [
    [60 , 60],
    [40 , 100],
    [150 , 70],
    [120 , 120],
    [30,90],
    [200,150]];
  Set <ColorSwatch> COLORES = {
    Colors.pink,
    Colors.green,
    Colors.purpleAccent,
    Colors.lime,
    Colors.red,
    };
    for (var i = 0; (i % 6) < 6 ; i++ ){

    }


  }
}