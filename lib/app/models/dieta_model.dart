import 'package:ilera/app/models/refeicao_model.dart';

class DietaModel {
  int id;
  int idAluno;
  List<RefeicaoModel> refeicoes;

  DietaModel({this.id, this.idAluno, this.refeicoes});

  DietaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idAluno = json['idAluno'];
    if (json['refeicoes'] != null) {
      refeicoes = new List<RefeicaoModel>();
      json['refeicoes'].forEach((v) {
        refeicoes.add(new RefeicaoModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['idAluno'] = this.idAluno;
    if (this.refeicoes != null) {
      data['refeicoes'] = this.refeicoes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
