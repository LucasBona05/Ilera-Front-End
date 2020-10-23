class RefeicaoModel {
  int id;
  String horario;
  String descricao;

  RefeicaoModel({this.id, this.horario, this.descricao});

  RefeicaoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    horario = json['horario'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['horario'] = this.horario;
    data['descricao'] = this.descricao;
    return data;
  }
}
