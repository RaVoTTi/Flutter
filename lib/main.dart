import 'package:flutter/material.dart';


import 'package:flutter_tutorial_web/src/pages/praticanomas/animated_container.dart';
import 'package:flutter_tutorial_web/src/pages/praticanomas/impar_page.dart';
import 'package:flutter_tutorial_web/src/pages/praticanomas/home_temp.dart';
import 'package:flutter_tutorial_web/src/pages/praticanomas/number_page.dart';
import 'package:flutter_tutorial_web/src/pages/praticanomas/seven_page.dart';


 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/'           : (BuildContext context) => HomePageTemp(),
          'numberPage'  : (BuildContext context) => NumberPage(),
          'sevenPage'   : (BuildContext context) => SevenPage(),
          'animatedPage': (BuildContext context) => AnimatedContainerPage(),
        },
        onGenerateRoute: ( RouteSettings settings ){

          return MaterialPageRoute(
            builder: ( BuildContext context ) => ImparPage()
          );

        },
      );
  }
}