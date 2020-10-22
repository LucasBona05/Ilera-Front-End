class NutricionistaModel {
  String nomeCompleto;
  String senha;
  String email;
  String cpf;
  String telefone;
  FotoDePerfil fotoDePerfil;
  int id;
  String crn;

  NutricionistaModel(
      {this.nomeCompleto,
      this.senha,
      this.email,
      this.cpf,
      this.telefone,
      this.fotoDePerfil,
      this.id,
      this.crn});

  NutricionistaModel.fromJson(Map<String, dynamic> json) {
    nomeCompleto = json['nomeCompleto'];
    senha = json['senha'];
    email = json['email'];
    cpf = json['cpf'];
    telefone = json['telefone'];
    fotoDePerfil = json['fotoDePerfil'] != null
        ? new FotoDePerfil.fromJson(json['fotoDePerfil'])
        : null;
    id = json['id'];
    crn = json['crn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nomeCompleto'] = this.nomeCompleto;
    data['senha'] = this.senha;
    data['email'] = this.email;
    data['cpf'] = this.cpf;
    data['telefone'] = this.telefone;
    if (this.fotoDePerfil != null) {
      data['fotoDePerfil'] = this.fotoDePerfil.toJson();
    }
    data['id'] = this.id;
    data['crn'] = this.crn;
    return data;
  }
}

class FotoDePerfil {
  int id;
  String imageUrl;

  FotoDePerfil({this.id, this.imageUrl});

  FotoDePerfil.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}