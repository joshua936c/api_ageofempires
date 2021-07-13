class AgeModel {
  String ? name;
  String ? expansion;

  
  AgeModel({
  this.name, 
  this.expansion, 
  });

  factory AgeModel.mapJson(Map<String,dynamic> data){
    return AgeModel(
      name: data['name'],
      expansion: data['expansion'],
    );
  }

}