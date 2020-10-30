import 'package:ilera/app/models/exercicios_model.dart';

class FichaDeTreinoModel {
  int id;
  List<ExercicioModel> exercicios;
  String descricao;

  FichaDeTreinoModel({this.id, this.exercicios, this.descricao});

  FichaDeTreinoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['exercicios'] != null) {
      exercicios = new List<ExercicioModel>();
      json['exercicios'].forEach((v) {
        exercicios.add(new ExercicioModel.fromJson(v));
      });
    }
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.exercicios != null) {
      data['exercicios'] = this.exercicios.map((v) => v.toJson()).toList();
    }
    data['descricao'] = this.descricao;
    return data;
  }
}
