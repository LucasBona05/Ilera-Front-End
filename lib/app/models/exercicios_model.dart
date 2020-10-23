import 'package:ilera/app/models/serie_model.dart';

class ExercicioModel {
  int id;
  String nomeDoExercicio;
  String descricaoDoExercicio;
  SerieModel serieDoExercicio;

  ExercicioModel(
      {this.id,
      this.nomeDoExercicio,
      this.descricaoDoExercicio,
      this.serieDoExercicio});

  ExercicioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeDoExercicio = json['nomeDoExercicio'];
    descricaoDoExercicio = json['descricaoDoExercicio'];
    serieDoExercicio = json['serieDoExercicio'] != null
        ? new SerieModel.fromJson(json['serieDoExercicio'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nomeDoExercicio'] = this.nomeDoExercicio;
    data['descricaoDoExercicio'] = this.descricaoDoExercicio;
    if (this.serieDoExercicio != null) {
      data['serieDoExercicio'] = this.serieDoExercicio.toJson();
    }
    return data;
  }
}