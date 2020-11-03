import 'package:ilera/app/models/imagem_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:ilera/app/repositories/aluno_repository.dart';
import 'package:ilera/app/models/pessoa_model.dart';

part 'cadastro_controller.g.dart';

class CadastroController = _CadastroControllerBase with _$CadastroController;

abstract class _CadastroControllerBase with Store {
  final AlunoRepository alunoRepository;

  @observable
  TextEditingController nomeCompleto = TextEditingController();
  @observable
  TextEditingController senha = TextEditingController();
  @observable
  TextEditingController confirmSenha = TextEditingController();
  @observable
  TextEditingController email = TextEditingController();
  @observable
  TextEditingController genero = TextEditingController();
  @observable
  TextEditingController cpf = TextEditingController();
  @observable
  TextEditingController telefone = TextEditingController();
  @observable
  TextEditingController fotoDePerfil = TextEditingController();
  @observable
  TextEditingController fotoDeFrente = TextEditingController();
  @observable
  TextEditingController fotoDeCostas = TextEditingController();
  @observable
  TextEditingController peso = TextEditingController();
  @observable
  TextEditingController altura = TextEditingController();
  @observable
  TextEditingController cintura = TextEditingController();
  @observable
  TextEditingController pescoco = TextEditingController();
  @observable
  TextEditingController plano = TextEditingController();

  _CadastroControllerBase([this.alunoRepository]);

  @action
  Future<AlunoModel> registrarAluno() async {
    var pesoDouble = double.parse(peso.text);
    var alturaDouble = double.parse(altura.text);
    var cinturaDouble = double.parse(cintura.text);
    var pescocoDouble = double.parse(pescoco.text);

    ImagemModel fotoDePerfil = ImagemModel();
    ImagemModel fotoDeFrente = ImagemModel();
    ImagemModel fotoDeCostas = ImagemModel();

    return await this.alunoRepository.cadastro(
        nomeCompleto.text,
        senha.text,
        email.text,
        genero.text,
        cpf.text,
        telefone.text,
        fotoDePerfil,
        fotoDeFrente,
        fotoDeCostas,
        pesoDouble,
        alturaDouble,
        cinturaDouble,
        pescocoDouble,
        plano.text);
  }
}
