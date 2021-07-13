import 'package:api_ageofempires/src/models/age_model.dart';
import 'package:dio/dio.dart';

class ProviderAgeoe{
  final _url = 'https://age-of-empires-2-api.herokuapp.com/api/v1/civilizations';
  final _http = Dio();


  Future<List<AgeModel>> obtenerCivilization() async{
    final reponse = await _http.get(_url);
    List<dynamic> data = reponse.data['civilizations'];
    final lista = data.map((civilizations) => AgeModel.mapJson(civilizations)).toList();
    return lista;
  }

}