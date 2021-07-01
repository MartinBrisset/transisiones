import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/pagina1Page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Pagina1Page()
    );
  }
}