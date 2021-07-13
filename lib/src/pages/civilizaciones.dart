import 'package:api_ageofempires/src/models/age_model.dart';
import 'package:flutter/material.dart';

class Civilizaciones extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AgeModel civilizations = ModalRoute.of(context)!.settings.arguments as AgeModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(civilizations.name!),
      ),
      body:Container(
        child: Column(
          children: 
          [Image.network('https://static.wikia.nocookie.net/ageofempires/images/6/6e/Escudos_Civilizaciones_Aoe2.png/revision/latest/scale-to-width-down/585?cb=20210603120620&path-prefix=es'),
          Text(civilizations.name!, style: TextStyle(fontSize: 50, color: Colors.blue)),
          Text(civilizations.expansion!, style: TextStyle(fontSize: 50, color: Colors.red))
          ],    
        )
      )
    );
  }
}