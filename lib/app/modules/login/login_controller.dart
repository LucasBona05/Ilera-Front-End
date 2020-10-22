import 'package:flutter/material.dart';
import 'package:ilera/app/models/nutricionista_model.dart';
import 'package:ilera/app/repositories/nutricionista_repository.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final NutricionistaRepository nutricionistaRepository;

  @observable
  TextEditingController email = TextEditingController();
  @observable
  TextEditingController senha = TextEditingController();
  @observable
  ObservableFuture<NutricionistaModel> nutricionista;

  _LoginControllerBase([this.nutricionistaRepository]);

  @action
  void autenticarNutricionista() {
    print(email.text + "\n" + senha.text);
    nutricionista = this
        .nutricionistaRepository
        .login(email.text, senha.text)
        .asObservable();
  }
}
