import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
 
 
class ProffesionalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromRGBO(12,16,238,1.0),Color.fromRGBO(110,58,189,1.0)]
          )
        ),
      child: Column(
        children: <Widget>[
          _NavAppBar(),
        ],
      ),
      ),
      

    );
      
  }
}

 
class _NavAppBar extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return LayoutBuilder(
      builder: (context ,constraints){
        if (constraints.maxWidth > 800){
          return _DesktopNav();
        }
        else {
          // return _SmartNav();
        }
      }
    );
}
}

 
class _DesktopNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                
                child: MaterialButton(
                  minWidth: 70,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  elevation: 30.0,
                  color: Colors.white,
                  child: Text('RIVOTTRIL', style: TextStyle(color: Colors.black, fontSize: 30.0),),
                  onPressed: (){},
                ),
              ),
              Row(
                children: _botones(),
              ),
              ]
          ),    
    );
  }
}

List<Widget> _botones() {
  List <Widget> _listaBotones = []; 
  for (var i = 0; i < 4; i++) {

    final Widget temp = FlatButton(
      child: Text('ABOUT US',style: TextStyle(color: Colors.white),),
      onPressed: (){},
    );
    _listaBotones..add(temp)
                ..add(SizedBox(width: 1.0,));
  }
  return _listaBotones;
}
// class _SmartNav extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }