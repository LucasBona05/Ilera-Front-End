import 'package:ilera/app/models/imagem_model.dart';
import 'package:ilera/app/models/pessoa_model.dart';

class PsicologoModel {
  String nomeCompleto;
  String email;
  String cpf;
  String telefone;
  ImagemModel fotoDePerfil;
  int id;
  List<AlunoModel> alunos;
  String crp;

  PsicologoModel(
      {this.nomeCompleto,
      this.email,
      this.cpf,
      this.telefone,
      this.fotoDePerfil,
      this.id,
      this.alunos,
      this.crp});

  PsicologoModel.fromJson(Map<String, dynamic> json) {
    nomeCompleto = json['nomeCompleto'];
    email = json['email'];
    cpf = json['cpf'];
    telefone = json['telefone'];
    fotoDePerfil = json['fotoDePerfil'] != null
        ? new ImagemModel.fromJson(json['fotoDePerfil'])
        : null;
    id = json['id'];
    if (json['alunos'] != null) {
      alunos = new List<AlunoModel>();
      json['alunos'].forEach((v) {
        alunos.add(new AlunoModel.fromJson(v));
      });
    }
    crp = json['crp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nomeCompleto'] = this.nomeCompleto;
    data['email'] = this.email;
    data['cpf'] = this.cpf;
    data['telefone'] = this.telefone;
    if (this.fotoDePerfil != null) {
      data['fotoDePerfil'] = this.fotoDePerfil.toJson();
    }
    data['id'] = this.id;
    if (this.alunos != null) {
      data['alunos'] = this.alunos.map((v) => v.toJson()).toList();
    }
    data['crp'] = this.crp;
    return data;
  }
}