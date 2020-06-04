import 'package:flutter/material.dart';
 
 
class SevenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Caiste en el 7'),
        ),
        body:ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          children: _forCards(_cardClassic(), _cardImage(), 5)

        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.airline_seat_recline_normal),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
          
        
    );
  }

  _cardClassic() {
    return Card(
      child: Column(
        children: <Widget> [
          ListTile(
            title: Text('Presiona okey asi se descargan 3000 viruses'),
            leading: Icon(Icons.whatshot),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              RaisedButton(
                elevation: 10.0,
                child: Text('RAISED BUTTON'),
                onPressed: (){},
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
              ),
              FlatButton(
                child: Text('FLAT BUTTON'),
                onPressed: (){},
                color: Colors.green[200],
              )
            ],
          ),
        ],
      ), 
    );
  }

  _cardImage() {
    final cardImage =  Container(

      child: Column(
        children: <Widget> [
          FadeInImage(
            image: NetworkImage('https://wallpaperaccess.com/full/1094557.jpg'),
            placeholder: AssetImage('assets/original.gif'),
            fadeInDuration: Duration(milliseconds :200),
            height: 500,
            fit: BoxFit.cover
           ),
          // Image(
          //   image: NetworkImage(url),
          // )
          Container(
              child: Center(
                child: Text(' SPACEX ')
                )
              ),
        ]
      )
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.green,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.pink,
            blurRadius: 3.0, // cantidad de sombra
            spreadRadius: 0.10, // Dureza de sombra
            offset: Offset (5.0, 5.0) // Ubicacion en el plano


          )

        ]
      
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: cardImage,
      ),
    );
  }

  List <Widget> _forCards(Widget a , Widget b, int count){
    List listilla  =  <Widget> [];
    for (var i = 0; i < count; i++) {
      listilla.add(a);
      listilla.add(SizedBox(height : 3));
      listilla.add(b);
    }
    return listilla;

  }
}