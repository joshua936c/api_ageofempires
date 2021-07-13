import 'package:api_ageofempires/src/pages/civilizaciones.dart';
import 'package:api_ageofempires/src/pages/home.dart';
import 'package:flutter/material.dart';


void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Age of Empires Civilizations',
      initialRoute: '/home',
      routes: {
        '/home':(_)=>Home(),
        '/civilizaciones': (_)=>Civilizaciones(),
      },
    );
  }
}