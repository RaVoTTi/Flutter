import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial_web/src/utils/iconos_utils.dart';

class HomePageTemp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Center(
        child: Text('Temporal'),
      ),),
      body: ListView(
        children: crearItems(20, context)
            )
      
    );
  }

  List<Widget> crearItems(int count, BuildContext context) {
    List<Widget> lista = new List<Widget>();
    for (var i = 0; i < count; i++) {
      
      final tempWidget = ListTile(
          title: Text((i).toString()),
          onTap:() {
            desitionPage(context ,  i );
            
            // final route = MaterialPageRoute(
            //   builder: ( context ){
            //     return NumberPage( numerito : (i % 3));
            //   }
            // );
            // Navigator.push(context, route); // FORMA COMO MIGRATE, DE ACTIVITY A OTRO ACTIVITY

          },
          leading: getIconRandom(i),);

      lista.add( tempWidget );
      lista.add( Divider (
        color: Colors.red[400],
        height: 30.0,

      ));

    }
  return lista;
  }

  void desitionPage(BuildContext context , int i) {
    if (i % 2 == 0){
    Navigator.pushNamed(context, 'numberPage', );
    }
    else if (i == 1){
    Navigator.pushNamed(context, 'proffesionalPage', );
    }
    else if (i == 7){
    Navigator.pushNamed(context, 'sevenPage', );
    }
    else if (i == 17){
    Navigator.pushNamed(context, 'animatedPage', );
    }
    
    else{
    Navigator.pushNamed(context, 'nada', );

    }
  }

}

