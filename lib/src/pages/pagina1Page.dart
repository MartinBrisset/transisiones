import 'package:flutter/material.dart';

import 'package:flutter_application_1/src/pages/pagina2Page.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Pagina 1'),
     ),
      body: Center(
        child: Text('Pagina 1'),
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.ac_unit_rounded),
       onPressed: () {
        
        Navigator.push(context, _crearRuta());


       },
     ),
   );
  }

  Route _crearRuta() {

    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => Pagina2Page(),
      // transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {

        final animacion = CurvedAnimation(parent: animation, curve: Curves.bounceIn);

        // return SlideTransition(
        //   position: Tween<Offset>( begin: Offset(0.5, 1.0 ),end: Offset.zero ).animate(animacion),
        //   child: child,
        // );

        // return ScaleTransition(
        //   child: child,
        //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(animacion),
        // );

        // return RotationTransition(
        //   turns: Tween<double>(begin: 0.0, end: 1.0).animate(animacion),
        //   child: child,
        // );

        // return FadeTransition(
        //   opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animacion),
        //   child: child,
        // );

         return RotationTransition(
          turns: Tween<double>(begin: 0.0, end: 1.0).animate(animacion),
          child: FadeTransition(
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animacion),
            child: child,
          ),
        );



      },

    );


  }


}


