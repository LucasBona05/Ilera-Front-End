import 'package:flutter/material.dart';
import 'package:ilera/app/models/nutricionista_model.dart';
import 'package:ilera/app/models/pessoa_model.dart';
import 'package:ilera/app/repositories/aluno_repository.dart';
import 'package:ilera/app/repositories/nutricionista_repository.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final NutricionistaRepository nutricionistaRepository;
  final AlunoRepository alunoRepository;

  @observable
  TextEditingController email = TextEditingController();
  @observable
  TextEditingController senha = TextEditingController();
  @observable
  ObservableFuture<NutricionistaModel> nutricionista;

  _LoginControllerBase([this.nutricionistaRepository, this.alunoRepository]);

  @action
  Future<AlunoModel> autenticarAluno() async {
    print(email.text + '\n' + senha.text);
    return await this.alunoRepository.login(email.text, senha.text);
  }

  @action
  void autenticarNutricionista() {
    print(email.text + "\n" + senha.text);
    nutricionista = this
        .nutricionistaRepository
        .login(email.text, senha.text)
        .asObservable();
  }
}
