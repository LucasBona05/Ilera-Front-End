import 'package:ilera/app/models/pessoa_model.dart';
import 'package:ilera/app/models/refeicao_model.dart';

class DietaModel {
  int id;
  AlunoModel aluno;
  List<RefeicaoModel> refeicoes;

  DietaModel({this.id, this.aluno, this.refeicoes});

  DietaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    //aluno = json['aluno'];
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
    if (this.refeicoes != null) {
      data['refeicoes'] = this.refeicoes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
