import 'package:ilera/app/models/dieta_model.dart';
import 'package:ilera/app/models/ficha_de_treino_model.dart';
import 'package:ilera/app/models/imagem_model.dart';

class AlunoModel {
  String nomeCompleto;
  String email;
  String cpf;
  String telefone;
  ImagemModel fotoDePerfil;
  int id;
  int idInstrutor;
  int idNutricionista;
  int idPsicologo;
  ImagemModel fotoDeFrente;
  ImagemModel fotoDeCostas;
  String plano;
  String genero;
  FichaDeTreinoModel fichaDeTreino;
  DietaModel dieta;
  int peso;
  int altura;
  int cintura;
  int pescoco;

  AlunoModel(
      {this.nomeCompleto,
      this.email,
      this.cpf,
      this.telefone,
      this.fotoDePerfil,
      this.id,
      this.idInstrutor,
      this.idNutricionista,
      this.idPsicologo,
      this.fotoDeFrente,
      this.fotoDeCostas,
      this.plano,
      this.genero,
      this.fichaDeTreino,
      this.dieta,
      this.peso,
      this.altura,
      this.cintura,
      this.pescoco});

  AlunoModel.fromJson(Map<String, dynamic> json) {
    nomeCompleto = json['nomeCompleto'];
    email = json['email'];
    cpf = json['cpf'];
    telefone = json['telefone'];
    fotoDePerfil = json['fotoDePerfil'] != null
        ? new ImagemModel.fromJson(json['fotoDePerfil'])
        : null;
    id = json['id'];
    idInstrutor = json['idInstrutor'];
    idNutricionista = json['idNutricionista'];
    idPsicologo = json['idPsicologo'];
    fotoDeFrente = json['fotoDeFrente'] != null
        ? new ImagemModel.fromJson(json['fotoDeFrente'])
        : null;
    fotoDeCostas = json['fotoDeCostas'] != null
        ? new ImagemModel.fromJson(json['fotoDeCostas'])
        : null;
    plano = json['plano'];
    genero = json['genero'];
    fichaDeTreino = json['fichaDeTreino'] != null
        ? new FichaDeTreinoModel.fromJson(json['fichaDeTreino'])
        : null;
    dieta =
        json['dieta'] != null ? new DietaModel.fromJson(json['dieta']) : null;
    peso = json['peso'];
    altura = json['altura'];
    cintura = json['cintura'];
    pescoco = json['pescoco'];
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
    data['idInstrutor'] = this.idInstrutor;
    data['idNutricionista'] = this.idNutricionista;
    data['idPsicologo'] = this.idPsicologo;
    if (this.fotoDeFrente != null) {
      data['fotoDeFrente'] = this.fotoDeFrente.toJson();
    }
    if (this.fotoDeCostas != null) {
      data['fotoDeCostas'] = this.fotoDeCostas.toJson();
    }
    data['plano'] = this.plano;
    data['genero'] = this.genero;
    if (this.fichaDeTreino != null) {
      data['fichaDeTreino'] = this.fichaDeTreino.toJson();
    }
    if (this.dieta != null) {
      data['dieta'] = this.dieta.toJson();
    }
    data['peso'] = this.peso;
    data['altura'] = this.altura;
    data['cintura'] = this.cintura;
    data['pescoco'] = this.pescoco;
    return data;
  }
}
