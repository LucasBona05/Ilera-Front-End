class SerieModel {
  int id;
  String identificadorDaSerie;
  int numeroDeRepeticoesPorSerie;
  int numeroQueASerieDeveSerRepetida;
  int tempoDeDescansoEntreCadaSerie;

  SerieModel(
      {this.id,
      this.identificadorDaSerie,
      this.numeroDeRepeticoesPorSerie,
      this.numeroQueASerieDeveSerRepetida,
      this.tempoDeDescansoEntreCadaSerie});

  SerieModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    identificadorDaSerie = json['identificadorDaSerie'];
    numeroDeRepeticoesPorSerie = json['numeroDeRepeticoesPorSerie'];
    numeroQueASerieDeveSerRepetida = json['numeroQueASerieDeveSerRepetida'];
    tempoDeDescansoEntreCadaSerie = json['tempoDeDescansoEntreCadaSerie'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['identificadorDaSerie'] = this.identificadorDaSerie;
    data['numeroDeRepeticoesPorSerie'] = this.numeroDeRepeticoesPorSerie;
    data['numeroQueASerieDeveSerRepetida'] =
        this.numeroQueASerieDeveSerRepetida;
    data['tempoDeDescansoEntreCadaSerie'] = this.tempoDeDescansoEntreCadaSerie;
    return data;
  }
}
