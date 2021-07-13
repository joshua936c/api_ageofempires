import 'package:api_ageofempires/src/models/age_model.dart';
import 'package:api_ageofempires/src/provider/provider_age.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  final _providerAgeoe = ProviderAgeoe();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Civilizations'
        )),
      body: FutureBuilder(
        future: _providerAgeoe.obtenerCivilization(),
        builder: 
        (BuildContext context, AsyncSnapshot<List<AgeModel>> snapshot) {
          final listcivilizations = snapshot.data;
          if(snapshot.hasData) {
            return ListView.builder(
              itemCount: listcivilizations!.length,
              itemBuilder: (BuildContext context, int i){
                final civilizations = listcivilizations[i];
                return _Civilizacion(civilizations);
              });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class _Civilizacion extends StatelessWidget{
  final AgeModel civilizations;
  _Civilizacion(this.civilizations);
  @override
  Widget build(BuildContext context) {
   return ListTile(
     onTap: ()=>Navigator.pushNamed(context, '/civilizaciones',arguments: civilizations),
     title: Text(civilizations.name!),
     subtitle: Text(civilizations.expansion!),
     leading: Image.network('https://upload.wikimedia.org/wikipedia/commons/c/cf/Aoe_fuchs.png'),
   );
  }
}